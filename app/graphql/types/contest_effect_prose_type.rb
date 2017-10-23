Types::ContestEffectProseType = GraphQL::ObjectType.define do
  name "ContestEffectProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :contestEffect, !types.Int, "", property: :contest_effect_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :flavorText, !types.String, "", property: :flavor_text
  field :effect, !types.String, "", property: :effect
end