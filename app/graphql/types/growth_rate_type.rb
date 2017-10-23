Types::GrowthRateType = GraphQL::ObjectType.define do
  name "GrowthRate"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :formula, !types.String, "", property: :formula
end