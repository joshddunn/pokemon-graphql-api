Types::EvolutionTriggerType = GraphQL::ObjectType.define do
  name "EvolutionTrigger"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :evolutionTrigger, Types::PokemonEvolutionType, "", property: :pokemon_evolutions
end
