Types::ItemGameIndexType = GraphQL::ObjectType.define do
  name "ItemGameIndex"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, !types.Int, "", property: :item_id
  field :generation, !types.Int, "", property: :generation_id
  field :gameIndex, !types.Int, "", property: :game_index

end
