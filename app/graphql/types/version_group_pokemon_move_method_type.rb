Types::VersionGroupPokemonMoveMethodType = GraphQL::ObjectType.define do
  name "VersionGroupPokemonMoveMethod"
  description ""

  field :id, !types.ID, "", property: :id
  field :versionGroup, !types.Int, "", property: :version_group_id
  field :pokemonMoveMethod, !types.Int, "", property: :pokemon_move_method_id

end
