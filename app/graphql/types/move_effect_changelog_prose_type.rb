Types::MoveEffectChangelogProseType = GraphQL::ObjectType.define do
  name "MoveEffectChangelogProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveEffectChangelog, Types::MoveEffectChangelogType, "", property: :move_effect_changelog
  field :localLanguage, Types::LanguageType, "", property: :language
  field :effect, !types.String, "", property: :effect

end
