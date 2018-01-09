Types::GenderType = GraphQL::ObjectType.define do
  name "Gender"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :pokemonEvolutions, types[Types::PokemonEvolutionType], "", property: :pokemon_evolutions
  field :conquestPokemonEvolutions, types[Types::ConquestPokemonEvolutionType], "", property: :conquest_pokemon_evolutions
  field :conquestWarriors, types[Types::ConquestWarriorType], "", property: :conquest_warriors
end
