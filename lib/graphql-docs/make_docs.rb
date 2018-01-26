# load "./lib/graphql-docs/make_docs.rb"

file = File.new("./lib/graphql-docs/schema.idl", "w")
file.write GraphQL::Schema::Printer.print_schema(MyappSchema)
file.close

path = "./lib/graphql-docs"

GraphQLDocs.build(
  filename: "./lib/graphql-docs/schema.idl",
  output_dir: "./public/",
  base_url: "",
  templates: {
    default: "#{path}/layouts/default.html",
    includes: "#{path}/layouts/includes",
    operations: "#{path}/layouts/graphql_operations.html",
    objects: "#{path}/layouts/graphql_objects.html",
    mutations: "#{path}/layouts/graphql_mutations.html",
    interfaces: "#{path}/layouts/graphql_interfaces.html",
    enums: "#{path}/layouts/graphql_enums.html",
    unions: "#{path}/layouts/graphql_unions.html",
    input_objects: "#{path}/layouts/graphql_input_objects.html",
    scalars: "#{path}/layouts/graphql_scalars.html",
  },
  landing_pages: {
    index: "#{path}/landing_pages/index.md",
    query: "#{path}/landing_pages/query.md",
    object: "#{path}/landing_pages/object.md",
    mutation: "#{path}/landing_pages/mutation.md",
    interface: "#{path}/landing_pages/interface.md",
    enum: "#{path}/landing_pages/enum.md",
    union: "#{path}/landing_pages/union.md",
    input_object: "#{path}/landing_pages/input_object.md",
    scalar: "#{path}/landing_pages/scalar.md"
  }
)
