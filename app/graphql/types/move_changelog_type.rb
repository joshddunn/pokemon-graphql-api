Types::MoveChangelogType = GraphQL::ObjectType.define do
  name "MoveChangelog"
  description ""

  field :id, !types.ID, "", property: :id
  field :move, !types.Int, "", property: :move_id
  field :changedInVersionGroup, !types.Int, "", property: :changed_in_version_group_id
  field :type, !types.Int, "", property: :type_id
  field :power, !types.Int, "", property: :power
  field :pp, !types.Int, "", property: :pp
  field :accuracy, !types.Int, "", property: :accuracy
  field :effect, !types.Int, "", property: :effect_id
  field :effectChance, !types.Int, "", property: :effect_chance
end