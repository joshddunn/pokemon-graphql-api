Types::ItemCategoryType = GraphQL::ObjectType.define do
  name "ItemCategory"
  description ""

  field :id, !types.ID, "", property: :id
  field :pocket, Types::ItemPocketType, "", property: :item_pocket
  field :identifier, !types.String, "", property: :identifier

  field :itemCategory, Types::ItemCategoryProseType, "", property: :item_category_proses
  field :category, Types::ItemType, "", property: :items
end
