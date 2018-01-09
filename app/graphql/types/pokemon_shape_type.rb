Types::PokemonShapeType = GraphQL::ObjectType.define do
  name "PokemonShape"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :pokemonShapeProses, types[Types::PokemonShapeProseType], "", property: :pokemon_shape_proses
  field :pokemonSpecies, types[Types::PokemonSpecyType], "", property: :pokemon_species
end
