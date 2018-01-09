Types::LocationAreaEncounterRateType = GraphQL::ObjectType.define do
  name "LocationAreaEncounterRate"
  description ""

  field :id, types.ID, "", property: :id
  field :locationArea, Types::LocationAreaType, "", property: :location_area
  field :encounterMethod, Types::EncounterMethodType, "", property: :encounter_method
  field :version, Types::VersionType, "", property: :version
  field :rate, types.Int, "", property: :rate

end
