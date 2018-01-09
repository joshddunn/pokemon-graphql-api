Types::EncounterConditionType = GraphQL::ObjectType.define do
  name "EncounterCondition"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :encounterConditionProses, types[Types::EncounterConditionProseType], "", property: :encounter_condition_proses
  field :encounterConditionValues, types[Types::EncounterConditionValueType], "", property: :encounter_condition_values
end
