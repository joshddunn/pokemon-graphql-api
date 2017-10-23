Types::EncounterConditionProseType = GraphQL::ObjectType.define do
  name "EncounterConditionProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :encounterCondition, !types.Int, "", property: :encounter_condition_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
