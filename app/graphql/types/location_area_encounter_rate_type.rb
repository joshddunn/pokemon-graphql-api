Types::LocationAreaEncounterRateType = GraphQL::ObjectType.define do
  name "LocationAreaEncounterRate"
  description ""

  field :id, !types.ID, "", property: :id
  field :locationArea, !types.Int, "", property: :location_area_id
  field :encounterMethod, !types.Int, "", property: :encounter_method_id
  field :version, !types.Int, "", property: :version_id
  field :rate, !types.Int, "", property: :rate
end