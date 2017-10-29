Types::EncounterSlotType = GraphQL::ObjectType.define do
  name "EncounterSlot"
  description ""

  field :id, !types.ID, "", property: :id
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :encounterMethod, Types::EncounterMethodType, "", property: :encounter_method
  field :slot, !types.Int, "", property: :slot
  field :rarity, !types.Int, "", property: :rarity

  field :encounterSlot, Types::EncounterType, "", property: :encounters
end
