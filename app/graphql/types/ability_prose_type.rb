Types::AbilityProseType = GraphQL::ObjectType.define do
  name 'AbilityProse'
  description ''

  field :id, types.ID, '', property: :id
  field :ability, Types::AbilityType, '', property: :ability
  field :localLanguage, Types::LanguageType, '', property: :language
  field :shortEffect, types.String, '', property: :short_effect
  field :effect, types.String, '', property: :effect
end
