Types::LocationAreaType = GraphQL::ObjectType.define do
  name "LocationArea"
  description ""

  field :id, !types.ID, "", property: :id
  field :location, Types::LocationType, "", property: :location
  field :gameIndex, !types.Int, "", property: :game_index
  field :identifier, !types.String, "", property: :identifier

  field :encounters, !types[Types::EncounterType], "", property: :encounters
  field :locationAreaEncounterRates, !types[Types::LocationAreaEncounterRateType], "", property: :location_area_encounter_rates
  field :locationAreaProses, !types[Types::LocationAreaProseType], "", property: :location_area_proses
end
