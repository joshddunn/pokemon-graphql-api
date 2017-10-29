Types::PokemonHabitatType = GraphQL::ObjectType.define do
  name "PokemonHabitat"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :pokemonHabitat, Types::PokemonHabitatNameType, "", property: :pokemon_habitat_names
  field :habitat, Types::PokemonSpecyType, "", property: :pokemon_species
end
