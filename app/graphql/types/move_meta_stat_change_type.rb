Types::MoveMetaStatChangeType = GraphQL::ObjectType.define do
  name "MoveMetaStatChange"
  description ""

  field :id, !types.ID, "", property: :id
  field :move, Types::MoveType, "", property: :move
  field :stat, Types::StatType, "", property: :stat
  field :change, !types.Int, "", property: :change

end
