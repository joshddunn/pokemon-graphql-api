Types::ItemPocketType = GraphQL::ObjectType.define do
  name "ItemPocket"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :pocket, Types::ItemCategoryType, "", property: :item_categories
  field :itemPocket, Types::ItemPocketNameType, "", property: :item_pocket_names
end
