Types::AbilityProseType = GraphQL::ObjectType.define do
  name "AbilityProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :ability, !types.Int, "", property: :ability_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :shortEffect, !types.String, "", property: :short_effect
  field :effect, !types.String, "", property: :effect
end