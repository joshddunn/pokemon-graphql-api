Types::PokemonColorType = GraphQL::ObjectType.define do
  name "PokemonColor"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :pokemonSpecies, !types[Types::PokemonSpecyType], "", property: :pokemon_species
  field :pokemonColorNames, !types[Types::PokemonColorNameType], "", property: :pokemon_color_names
end
