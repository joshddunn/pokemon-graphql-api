Types::EncounterConditionValueProseType = GraphQL::ObjectType.define do
  name "EncounterConditionValueProse"
  description ""

  field :id, types.ID, "", property: :id
  field :encounterConditionValue, Types::EncounterConditionValueType, "", property: :encounter_condition_value
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
