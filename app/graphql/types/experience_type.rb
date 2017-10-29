Types::ExperienceType = GraphQL::ObjectType.define do
  name "Experience"
  description ""

  field :id, !types.ID, "", property: :id
  field :growthRate, Types::GrowthRateType, "", property: :growth_rate
  field :level, !types.Int, "", property: :level
  field :experience, !types.Int, "", property: :experience

end
