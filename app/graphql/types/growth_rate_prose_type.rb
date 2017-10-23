Types::GrowthRateProseType = GraphQL::ObjectType.define do
  name "GrowthRateProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :growthRate, !types.Int, "", property: :growth_rate_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
