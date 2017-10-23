Types::MoveFlavorSummaryType = GraphQL::ObjectType.define do
  name "MoveFlavorSummary"
  description ""

  field :id, !types.ID, "", property: :id
  field :move, !types.Int, "", property: :move_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :flavorSummary, !types.String, "", property: :flavor_summary
end
