Types::EncounterType = GraphQL::ObjectType.define do
  name "Encounter"
  description ""

  field :id, !types.ID, "", property: :id
  field :version, !types.Int, "", property: :version_id
  field :locationArea, !types.Int, "", property: :location_area_id
  field :encounterSlot, !types.Int, "", property: :encounter_slot_id
  field :pokemon, !types.Int, "", property: :pokemon_id
  field :minLevel, !types.Int, "", property: :min_level
  field :maxLevel, !types.Int, "", property: :max_level

end
