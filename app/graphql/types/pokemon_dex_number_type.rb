Types::PokemonDexNumberType = GraphQL::ObjectType.define do
  name "PokemonDexNumber"
  description ""

  field :id, !types.ID, "", property: :id
  field :species, !types.Int, "", property: :species_id
  field :pokedex, !types.Int, "", property: :pokedex_id
  field :pokedexNumber, !types.Int, "", property: :pokedex_number

end
