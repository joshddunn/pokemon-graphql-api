Types::ExperienceType = GraphQL::ObjectType.define do
  name "Experience"
  description ""

  field :id, !types.ID, "", property: :id
  field :growthRate, !types.Int, "", property: :growth_rate_id
  field :level, !types.Int, "", property: :level
  field :experience, !types.Int, "", property: :experience
end