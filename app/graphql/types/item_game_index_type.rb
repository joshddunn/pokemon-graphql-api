Types::ItemGameIndexType = GraphQL::ObjectType.define do
  name "ItemGameIndex"
  description ""

  field :id, types.ID, "", property: :id
  field :item, Types::ItemType, "", property: :item
  field :generation, Types::GenerationType, "", property: :generation
  field :gameIndex, types.Int, "", property: :game_index

end
