Types::EncounterConditionValueMapType = GraphQL::ObjectType.define do
  name "EncounterConditionValueMap"
  description ""

  field :id, !types.ID, "", property: :id
  field :encounter, !types.Int, "", property: :encounter_id
  field :encounterConditionValue, !types.Int, "", property: :encounter_condition_value_id
end