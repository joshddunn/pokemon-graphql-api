Types::SuperContestEffectProseType = GraphQL::ObjectType.define do
  name "SuperContestEffectProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :superContestEffect, !types.Int, "", property: :super_contest_effect_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :flavorText, !types.String, "", property: :flavor_text
end