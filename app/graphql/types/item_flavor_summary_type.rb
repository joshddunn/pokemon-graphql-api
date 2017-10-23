Types::ItemFlavorSummaryType = GraphQL::ObjectType.define do
  name "ItemFlavorSummary"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, !types.Int, "", property: :item_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :flavorSummary, !types.String, "", property: :flavor_summary
end