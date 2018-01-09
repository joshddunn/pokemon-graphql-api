Types::MoveFlavorSummaryType = GraphQL::ObjectType.define do
  name "MoveFlavorSummary"
  description ""

  field :id, types.ID, "", property: :id
  field :move, Types::MoveType, "", property: :move
  field :localLanguage, Types::LanguageType, "", property: :language
  field :flavorSummary, types.String, "", property: :flavor_summary

end
