Types::ConquestPokemonStatType = GraphQL::ObjectType.define do
  name "ConquestPokemonStat"
  description ""

  field :id, types.ID, "", property: :id
  field :pokemonSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :conquestStat, Types::ConquestStatType, "", property: :conquest_stat
  field :baseStat, types.Int, "", property: :base_stat

end
