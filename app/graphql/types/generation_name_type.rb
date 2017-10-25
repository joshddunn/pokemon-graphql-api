Types::GenerationNameType = GraphQL::ObjectType.define do
  name "GenerationName"
  description ""

  field :id, !types.ID, "", property: :id
  field :generation, !types.Int, "", property: :generation_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name

end
