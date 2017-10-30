Types::PokemonHabitatType = GraphQL::ObjectType.define do
  name "PokemonHabitat"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :pokemonHabitatNames, !types[Types::PokemonHabitatNameType], "", property: :pokemon_habitat_names
  field :pokemonSpecies, !types[Types::PokemonSpecyType], "", property: :pokemon_species
end
