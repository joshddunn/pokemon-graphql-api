Types::PokemonFormGenerationType = GraphQL::ObjectType.define do
  name "PokemonFormGeneration"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonForm, Types::PokemonFormType, "", property: :pokemon_form
  field :generation, Types::GenerationType, "", property: :generation
  field :gameIndex, !types.Int, "", property: :game_index

end
