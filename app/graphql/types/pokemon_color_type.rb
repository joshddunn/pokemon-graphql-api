Types::PokemonColorType = GraphQL::ObjectType.define do
  name "PokemonColor"
  description "Contains information about pokemon colors."

  field :id, types.ID, "Returns the id of the pokemon color.", property: :id
  field :identifier, types.String, "Returns the identifier of the pokemon color.", property: :identifier

  field :pokemonSpecies, types[Types::PokemonSpecyType], "Returns an array of pokemon species that are of this pokemon color.", property: :pokemon_species
  field :pokemonColorNames, types[Types::PokemonColorNameType], "Returns an array of names for this pokemon color.", property: :pokemon_color_names
end
