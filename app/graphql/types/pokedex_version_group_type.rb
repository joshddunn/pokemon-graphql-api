Types::PokedexVersionGroupType = GraphQL::ObjectType.define do
  name "PokedexVersionGroup"
  description ""

  field :id, types.ID, "", property: :id
  field :pokedex, Types::PokedexType, "", property: :pokedex
  field :versionGroup, Types::VersionGroupType, "", property: :version_group

end
