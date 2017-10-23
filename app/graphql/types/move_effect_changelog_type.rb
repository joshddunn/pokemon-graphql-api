Types::MoveEffectChangelogType = GraphQL::ObjectType.define do
  name "MoveEffectChangelog"
  description ""

  field :id, !types.ID, "", property: :id
  field :effect, !types.Int, "", property: :effect_id
  field :changedInVersionGroup, !types.Int, "", property: :changed_in_version_group_id
end
