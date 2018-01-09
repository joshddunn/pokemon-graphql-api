Types::PokeathlonStatType = GraphQL::ObjectType.define do
  name "PokeathlonStat"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :naturePokeathlonStats, types[Types::NaturePokeathlonStatType], "", property: :nature_pokeathlon_stats
  field :pokeathlonStatNames, types[Types::PokeathlonStatNameType], "", property: :pokeathlon_stat_names
  field :pokemonFormPokeathlonStats, types[Types::PokemonFormPokeathlonStatType], "", property: :pokemon_form_pokeathlon_stats
end
