Types::NatureNameType = GraphQL::ObjectType.define do
  name "NatureName"
  description ""

  field :id, !types.ID, "", property: :id
  field :nature, Types::NatureType, "", property: :nature
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
