Types::MoveFlagMapType = GraphQL::ObjectType.define do
  name "MoveFlagMap"
  description ""

  field :id, types.ID, "", property: :id
  field :move, Types::MoveType, "", property: :move
  field :moveFlag, Types::MoveFlagType, "", property: :move_flag

end
