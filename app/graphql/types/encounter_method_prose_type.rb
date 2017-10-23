Types::EncounterMethodProseType = GraphQL::ObjectType.define do
  name "EncounterMethodProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :encounterMethod, !types.Int, "", property: :encounter_method_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end