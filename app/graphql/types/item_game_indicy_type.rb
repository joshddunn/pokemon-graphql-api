Types::ItemGameIndicyType = GraphQL::ObjectType.define do
  name "ItemGameIndicy"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, !types.Int, "", property: :item_id
  field :generation, !types.Int, "", property: :generation_id
  field :gameIndex, !types.Int, "", property: :game_index
end