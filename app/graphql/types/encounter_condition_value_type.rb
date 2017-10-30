Types::EncounterConditionValueType = GraphQL::ObjectType.define do
  name "EncounterConditionValue"
  description ""

  field :id, !types.ID, "", property: :id
  field :encounterCondition, Types::EncounterConditionType, "", property: :encounter_condition
  field :identifier, !types.String, "", property: :identifier
  field :isDefault, !types.Boolean, "", property: :is_default

  field :encounterConditionValueMaps, !types[Types::EncounterConditionValueMapType], "", property: :encounter_condition_value_maps
  field :encounterConditionValueProses, !types[Types::EncounterConditionValueProseType], "", property: :encounter_condition_value_proses
end
