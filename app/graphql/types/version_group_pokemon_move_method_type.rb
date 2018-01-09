Types::VersionGroupPokemonMoveMethodType = GraphQL::ObjectType.define do
  name "VersionGroupPokemonMoveMethod"
  description ""

  field :id, types.ID, "", property: :id
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :pokemonMoveMethod, Types::PokemonMoveMethodType, "", property: :pokemon_move_method

end
