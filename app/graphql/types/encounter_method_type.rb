Types::EncounterMethodType = GraphQL::ObjectType.define do
  name "EncounterMethod"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier
  field :order, types.Int, "", property: :order

  field :encounterMethodProses, types[Types::EncounterMethodProseType], "", property: :encounter_method_proses
  field :encounterSlots, types[Types::EncounterSlotType], "", property: :encounter_slots
  field :locationAreaEncounterRates, types[Types::LocationAreaEncounterRateType], "", property: :location_area_encounter_rates
end
