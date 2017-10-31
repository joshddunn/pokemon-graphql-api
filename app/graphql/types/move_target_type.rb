Types::MoveTargetType = GraphQL::ObjectType.define do
  name "MoveTarget"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :moveTargetProses, !types[Types::MoveTargetProseType], "", property: :move_target_proses
  field :moves, !types[Types::MoveType], "", property: :moves
  field :moveChangelogs, !types[Types::MoveChangelogType], "", property: :move_changelogs
end
