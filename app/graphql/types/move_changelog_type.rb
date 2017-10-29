Types::MoveChangelogType = GraphQL::ObjectType.define do
  name "MoveChangelog"
  description ""

  field :id, !types.ID, "", property: :id
  field :move, Types::MoveType, "", property: :move
  field :changedInVersionGroup, Types::VersionGroupType, "", property: :version_group
  field :type, Types::TypeType, "", property: :type
  field :power, !types.Int, "", property: :power
  field :pp, !types.Int, "", property: :pp
  field :accuracy, !types.Int, "", property: :accuracy
  field :effect, Types::MoveEffectType, "", property: :move_effect
  field :effectChance, !types.Int, "", property: :effect_chance

end
