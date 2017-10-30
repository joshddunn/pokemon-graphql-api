Types::ItemPocketType = GraphQL::ObjectType.define do
  name "ItemPocket"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :itemCategories, !types[Types::ItemCategoryType], "", property: :item_categories
  field :itemPocketNames, !types[Types::ItemPocketNameType], "", property: :item_pocket_names
end
