Types::TypeNameType = GraphQL::ObjectType.define do
  name "TypeName"
  description ""

  field :id, !types.ID, "", property: :id
  field :type, !types.Int, "", property: :type_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name

end
