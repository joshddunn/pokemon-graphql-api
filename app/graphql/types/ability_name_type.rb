Types::AbilityNameType = GraphQL::ObjectType.define do
  name "AbilityName"
  description ""

  field :id, !types.ID, "", property: :id
  field :ability, Types::AbilityType, "", property: :ability
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
