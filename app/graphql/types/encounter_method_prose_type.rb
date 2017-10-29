Types::EncounterMethodProseType = GraphQL::ObjectType.define do
  name "EncounterMethodProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :encounterMethod, Types::EncounterMethodType, "", property: :encounter_method
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
