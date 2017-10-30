Types::EvolutionTriggerType = GraphQL::ObjectType.define do
  name "EvolutionTrigger"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :evolutionTriggerProses, !types[Types::EvolutionTriggerProseType], "", property: :evolution_trigger_proses
  field :pokemonEvolutions, !types[Types::PokemonEvolutionType], "", property: :pokemon_evolutions
end
