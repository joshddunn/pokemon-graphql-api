Types::PokemonMoveMethodType = GraphQL::ObjectType.define do
  name "PokemonMoveMethod"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :pokemonMoveMethodProses, types[Types::PokemonMoveMethodProseType], "", property: :pokemon_move_method_proses
  field :pokemonMoves, types[Types::PokemonMoveType], "", property: :pokemon_moves
  field :versionGroupPokemonMoveMethods, types[Types::VersionGroupPokemonMoveMethodType], "", property: :version_group_pokemon_move_methods
end
