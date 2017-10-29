Types::ItemCategoryProseType = GraphQL::ObjectType.define do
  name "ItemCategoryProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :itemCategory, Types::ItemCategoryType, "", property: :item_category
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
