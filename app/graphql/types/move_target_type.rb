Types::MoveTargetType = GraphQL::ObjectType.define do
  name "MoveTarget"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :moveTarget, Types::MoveTargetProseType, "", property: :move_target_proses
  field :target, Types::MoveType, "", property: :moves
end
