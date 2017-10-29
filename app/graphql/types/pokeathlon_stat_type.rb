Types::PokeathlonStatType = GraphQL::ObjectType.define do
  name "PokeathlonStat"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :pokeathlonStat, Types::PokemonFormPokeathlonStatType, "", property: :pokemon_form_pokeathlon_stats
end
