Types::LocationType = GraphQL::ObjectType.define do
  name "Location"
  description ""

  field :id, !types.ID, "", property: :id
  field :region, Types::RegionType, "", property: :region
  field :identifier, !types.String, "", property: :identifier

  field :location, Types::PokemonEvolutionType, "", property: :pokemon_evolutions
end
