Types::EncounterMethodType = GraphQL::ObjectType.define do
  name "EncounterMethod"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :order, !types.Int, "", property: :order

  field :encounterMethod, Types::LocationAreaEncounterRateType, "", property: :location_area_encounter_rates
end
