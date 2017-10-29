Types::EncounterConditionValueMapType = GraphQL::ObjectType.define do
  name "EncounterConditionValueMap"
  description ""

  field :id, !types.ID, "", property: :id
  field :encounter, Types::EncounterType, "", property: :encounter
  field :encounterConditionValue, Types::EncounterConditionValueType, "", property: :encounter_condition_value

end
