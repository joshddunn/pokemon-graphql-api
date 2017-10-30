Types::EncounterType = GraphQL::ObjectType.define do
  name "Encounter"
  description ""

  field :id, !types.ID, "", property: :id
  field :version, Types::VersionType, "", property: :version
  field :locationArea, Types::LocationAreaType, "", property: :location_area
  field :encounterSlot, Types::EncounterSlotType, "", property: :encounter_slot
  field :pokemon, Types::PokemonType, "", property: :pokemon
  field :minLevel, !types.Int, "", property: :min_level
  field :maxLevel, !types.Int, "", property: :max_level

  field :encounterConditionValueMaps, !types[Types::EncounterConditionValueMapType], "", property: :encounter_condition_value_maps
end
