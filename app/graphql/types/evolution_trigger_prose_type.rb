Types::EvolutionTriggerProseType = GraphQL::ObjectType.define do
  name "EvolutionTriggerProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :evolutionTrigger, Types::EvolutionTriggerType, "", property: :evolution_trigger
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
