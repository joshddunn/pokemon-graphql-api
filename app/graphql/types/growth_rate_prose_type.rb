Types::GrowthRateProseType = GraphQL::ObjectType.define do
  name "GrowthRateProse"
  description ""

  field :id, types.ID, "", property: :id
  field :growthRate, Types::GrowthRateType, "", property: :growth_rate
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
