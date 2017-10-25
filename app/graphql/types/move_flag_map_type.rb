Types::MoveFlagMapType = GraphQL::ObjectType.define do
  name "MoveFlagMap"
  description ""

  field :id, !types.ID, "", property: :id
  field :move, !types.Int, "", property: :move_id
  field :moveFlag, !types.Int, "", property: :move_flag_id

end
