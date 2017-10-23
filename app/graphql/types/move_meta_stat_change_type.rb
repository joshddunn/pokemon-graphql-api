Types::MoveMetaStatChangeType = GraphQL::ObjectType.define do
  name "MoveMetaStatChange"
  description ""

  field :id, !types.ID, "", property: :id
  field :move, !types.Int, "", property: :move_id
  field :stat, !types.Int, "", property: :stat_id
  field :change, !types.Int, "", property: :change
end
