Types::GenerationNameType = GraphQL::ObjectType.define do
  name "GenerationName"
  description ""

  field :id, !types.ID, "", property: :id
  field :generation, Types::GenerationType, "", property: :generation
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
