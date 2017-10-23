Types::AbilityType = GraphQL::ObjectType.define do
  name "Ability"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, !types.Int, "", property: :generation_id
  field :isMainSeries, !types.Boolean, "", property: :is_main_series
end