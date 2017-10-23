Types::MoveEffectChangelogProseType = GraphQL::ObjectType.define do
  name "MoveEffectChangelogProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveEffectChangelog, !types.Int, "", property: :move_effect_changelog_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :effect, !types.String, "", property: :effect
end