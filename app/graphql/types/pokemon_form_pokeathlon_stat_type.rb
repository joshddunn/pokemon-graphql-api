Types::PokemonFormPokeathlonStatType = GraphQL::ObjectType.define do
  name "PokemonFormPokeathlonStat"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonForm, Types::PokemonFormType, "", property: :pokemon_form
  field :pokeathlonStat, Types::PokeathlonStatType, "", property: :pokeathlon_stat
  field :minimumStat, !types.Int, "", property: :minimum_stat
  field :baseStat, !types.Int, "", property: :base_stat
  field :maximumStat, !types.Int, "", property: :maximum_stat

end
