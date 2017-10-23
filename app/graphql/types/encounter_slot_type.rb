Types::EncounterSlotType = GraphQL::ObjectType.define do
  name "EncounterSlot"
  description ""

  field :id, !types.ID, "", property: :id
  field :versionGroup, !types.Int, "", property: :version_group_id
  field :encounterMethod, !types.Int, "", property: :encounter_method_id
  field :slot, !types.Int, "", property: :slot
  field :rarity, !types.Int, "", property: :rarity
end
