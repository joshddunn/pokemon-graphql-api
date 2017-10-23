Types::PokedexVersionGroupType = GraphQL::ObjectType.define do
  name "PokedexVersionGroup"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokedex, !types.Int, "", property: :pokedex_id
  field :versionGroup, !types.Int, "", property: :version_group_id
end
