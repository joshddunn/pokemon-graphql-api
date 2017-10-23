Types::EncounterConditionValueType = GraphQL::ObjectType.define do
  name "EncounterConditionValue"
  description ""

  field :id, !types.ID, "", property: :id
  field :encounterCondition, !types.Int, "", property: :encounter_condition_id
  field :identifier, !types.String, "", property: :identifier
  field :isDefault, !types.Boolean, "", property: :is_default
end