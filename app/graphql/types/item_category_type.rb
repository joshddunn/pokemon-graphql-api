Types::ItemCategoryType = GraphQL::ObjectType.define do
  name "ItemCategory"
  description ""

  field :id, types.ID, "", property: :id
  field :pocket, Types::ItemPocketType, "", property: :item_pocket
  field :identifier, types.String, "", property: :identifier

  field :itemCategoryProses, types[Types::ItemCategoryProseType], "", property: :item_category_proses
  field :items, types[Types::ItemType], "", property: :items
end
