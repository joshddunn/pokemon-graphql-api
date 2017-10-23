Types::NatureNameType = GraphQL::ObjectType.define do
  name "NatureName"
  description ""

  field :id, !types.ID, "", property: :id
  field :nature, !types.Int, "", property: :nature_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end