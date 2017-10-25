Types::EvolutionTriggerProseType = GraphQL::ObjectType.define do
  name "EvolutionTriggerProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :evolutionTrigger, !types.Int, "", property: :evolution_trigger_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name

end
