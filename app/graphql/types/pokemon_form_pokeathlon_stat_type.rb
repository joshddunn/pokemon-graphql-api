Types::PokemonFormPokeathlonStatType = GraphQL::ObjectType.define do
  name "PokemonFormPokeathlonStat"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonForm, !types.Int, "", property: :pokemon_form_id
  field :pokeathlonStat, !types.Int, "", property: :pokeathlon_stat_id
  field :minimumStat, !types.Int, "", property: :minimum_stat
  field :baseStat, !types.Int, "", property: :base_stat
  field :maximumStat, !types.Int, "", property: :maximum_stat

end
