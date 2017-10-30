# load './lib/graphql-types/build_types.rb'

blacklist = [
 "schema_migrations",
 "ar_internal_metadata",
]

type_keys = {
  id: "!types.ID",
  string: "!types.String",
  text: "!types.String",
  integer: "!types.Int",
  boolean: "!types.Boolean",
}

def build_field accessor, type, property 
  return "  field :#{accessor.camelcase(:lower).chomp("Id")}, #{type}, \"\", property: :#{property}\n"
end

ActiveRecord::Base.connection.tables.each_with_index do |table, index|
  if not blacklist.include? table
    file_name = "#{table.singularize}_type.rb"
    file_path = "./app/graphql/types/#{file_name}"
    output = ""

    # puts "file exists" if File.file?(file_path)

    model_name = table.capitalize.singularize.camelcase
    model = model_name.constantize

    # build hash with the columns' foreign keys
    belongs_to = {}
    has_many = {}
    model.reflections.each_pair do |k,v|
      if v.macro == :belongs_to
        belongs_to[v.options[:foreign_key].to_s] = v.class_name.to_s
      elsif v.macro == :has_many
        has_many[k] = v.class_name.to_s
      end
    end

    output += "Types::#{model_name}Type = GraphQL::ObjectType.define do\n"
    output += "  name \"#{model_name}\"\n"
    output += "  description \"\"\n\n"

    # build the fields depending on primary key / foreign key / type
    model.columns.each do |column|
      if belongs_to[column.name]
        output += build_field column.name, "Types::#{belongs_to[column.name]}Type", belongs_to[column.name].underscore
      elsif column.name == model.primary_key
        output += build_field "id",  type_keys[:id], "id"
      elsif column.type.to_s != "datetime" 
        output += build_field column.name, type_keys[column.type], column.name
      end
    end

    output += "\n"

    # build the fields for parent classes
    has_many.each do |k,v|
      output += build_field "#{k}", "!types[Types::#{v}Type]", k 
    end

    output += "end\n"

    puts "#{file_name} created."

    # put output in file
    File.open(file_path, 'w') { |file| file.write(output) }
  end
end
