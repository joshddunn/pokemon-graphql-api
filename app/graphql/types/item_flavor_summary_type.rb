Types::ItemFlavorSummaryType = GraphQL::ObjectType.define do
  name "ItemFlavorSummary"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, Types::ItemType, "", property: :item
  field :localLanguage, Types::LanguageType, "", property: :language
  field :flavorSummary, !types.String, "", property: :flavor_summary

end
