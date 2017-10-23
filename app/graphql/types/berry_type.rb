Types::BerryType = GraphQL::ObjectType.define do
  name "Berry"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, !types.Int, "", property: :item_id
  field :firmness, !types.Int, "", property: :firmness_id
  field :naturalGiftPower, !types.Int, "", property: :natural_gift_power
  field :naturalGiftType, !types.Int, "", property: :natural_gift_type_id
  field :size, !types.Int, "", property: :size
  field :maxHarvest, !types.Int, "", property: :max_harvest
  field :growthTime, !types.Int, "", property: :growth_time
  field :soilDryness, !types.Int, "", property: :soil_dryness
  field :smoothness, !types.Int, "", property: :smoothness
end
