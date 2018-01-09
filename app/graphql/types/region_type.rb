Types::RegionType = GraphQL::ObjectType.define do
  name "Region"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :generations, types[Types::GenerationType], "", property: :generations
  field :locations, types[Types::LocationType], "", property: :locations
  field :pokedexes, types[Types::PokedexType], "", property: :pokedexes
  field :regionNames, types[Types::RegionNameType], "", property: :region_names
  field :versionGroupRegions, types[Types::VersionGroupRegionType], "", property: :version_group_regions
end
