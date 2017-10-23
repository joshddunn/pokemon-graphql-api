Types::ItemType = GraphQL::ObjectType.define do
  name "Item"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :category, !types.Int, "", property: :category_id
  field :cost, !types.Int, "", property: :cost
  field :flingPower, !types.Int, "", property: :fling_power
  field :flingEffect, !types.Int, "", property: :fling_effect_id
end
