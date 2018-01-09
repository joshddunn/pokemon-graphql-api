Types::MoveEffectChangelogType = GraphQL::ObjectType.define do
  name "MoveEffectChangelog"
  description ""

  field :id, types.ID, "", property: :id
  field :effect, Types::MoveEffectType, "", property: :move_effect
  field :changedInVersionGroup, Types::VersionGroupType, "", property: :version_group

  field :moveEffectChangelogProses, types[Types::MoveEffectChangelogProseType], "", property: :move_effect_changelog_proses
end
