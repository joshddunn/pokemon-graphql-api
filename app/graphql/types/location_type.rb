Types::LocationType = GraphQL::ObjectType.define do
  name "Location"
  description ""

  field :id, types.ID, "", property: :id
  field :region, Types::RegionType, "", property: :region
  field :identifier, types.String, "", property: :identifier

  field :locationAreas, types[Types::LocationAreaType], "", property: :location_areas
  field :locationGameIndices, types[Types::LocationGameIndexType], "", property: :location_game_indices
  field :locationNames, types[Types::LocationNameType], "", property: :location_names
  field :pokemonEvolutions, types[Types::PokemonEvolutionType], "", property: :pokemon_evolutions
end
