Types::PokemonDexNumberType = GraphQL::ObjectType.define do
  name "PokemonDexNumber"
  description ""

  field :id, types.ID, "", property: :id
  field :species, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :pokedex, Types::PokedexType, "", property: :pokedex
  field :pokedexNumber, types.Int, "", property: :pokedex_number

end
