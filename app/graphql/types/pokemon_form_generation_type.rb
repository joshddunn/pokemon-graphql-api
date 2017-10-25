Types::PokemonFormGenerationType = GraphQL::ObjectType.define do
  name "PokemonFormGeneration"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonForm, !types.Int, "", property: :pokemon_form_id
  field :generation, !types.Int, "", property: :generation_id
  field :gameIndex, !types.Int, "", property: :game_index

end
