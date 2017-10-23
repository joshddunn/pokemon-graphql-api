Types::AbilityChangelogType = GraphQL::ObjectType.define do
  name "AbilityChangelog"
  description ""

  field :id, !types.ID, "", property: :id
  field :ability, !types.Int, "", property: :ability_id
  field :changedInVersionGroup, !types.Int, "", property: :changed_in_version_group_id
end
