Types::EncounterConditionProseType = GraphQL::ObjectType.define do
  name "EncounterConditionProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :encounterCondition, Types::EncounterConditionType, "", property: :encounter_condition
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
