Types::EncounterConditionValueProseType = GraphQL::ObjectType.define do
  name "EncounterConditionValueProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :encounterConditionValue, !types.Int, "", property: :encounter_condition_value_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
