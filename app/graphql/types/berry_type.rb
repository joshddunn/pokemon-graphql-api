Types::BerryType = GraphQL::ObjectType.define do
  name 'Berry'

  field :id, !types.ID
  field :itemId, !types.Int, property: :item_id
  field :firmnessId, !types.Int, property: :firmness_id
  field :naturalGiftPower, !types.Int, property: :natural_gift_power
  field :naturalGiftTypeId, !types.Int, property: :natural_gift_type_id
  field :size, !types.Int
  field :maxHarvest, !types.Int, property: :max_harvest
  field :growthTime, !types.Int, property: :growth_time
  field :soilDryness, !types.Int, property: :soil_dryness
  field :smoothness, !types.Int
end
