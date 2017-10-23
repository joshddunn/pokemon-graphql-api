Types::ItemCategoryProseType = GraphQL::ObjectType.define do
  name "ItemCategoryProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :itemCategory, !types.Int, "", property: :item_category_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
