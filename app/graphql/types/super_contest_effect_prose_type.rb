Types::SuperContestEffectProseType = GraphQL::ObjectType.define do
  name "SuperContestEffectProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :superContestEffect, Types::SuperContestEffectType, "", property: :super_contest_effect
  field :localLanguage, Types::LanguageType, "", property: :language
  field :flavorText, !types.String, "", property: :flavor_text

end
