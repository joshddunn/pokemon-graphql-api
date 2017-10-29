Types::BerryType = GraphQL::ObjectType.define do
  name "Berry"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, Types::ItemType, "", property: :item
  field :firmness, Types::BerryFirmnessType, "", property: :berry_firmness
  field :naturalGiftPower, !types.Int, "", property: :natural_gift_power
  field :naturalGiftType, Types::TypeType, "", property: :type
  field :size, !types.Int, "", property: :size
  field :maxHarvest, !types.Int, "", property: :max_harvest
  field :growthTime, !types.Int, "", property: :growth_time
  field :soilDryness, !types.Int, "", property: :soil_dryness
  field :smoothness, !types.Int, "", property: :smoothness

  field :berry, Types::BerryFlavorType, "", property: :berry_flavors
end
