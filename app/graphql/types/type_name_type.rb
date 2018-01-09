Types::TypeNameType = GraphQL::ObjectType.define do
  name "TypeName"
  description ""

  field :id, types.ID, "", property: :id
  field :type, Types::TypeType, "", property: :type
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
