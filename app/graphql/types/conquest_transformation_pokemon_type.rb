Types::ConquestTransformationPokemonType = GraphQL::ObjectType.define do
  name 'ConquestTransformationPokemon'
  description ''

  field :id, types.ID, '', property: :id
  field :transformation, Types::ConquestWarriorRankType, '',
        property: :conquest_warrior_rank
  field :pokemonSpecies, Types::PokemonSpecyType, '',
        property: :pokemon_specy
end
