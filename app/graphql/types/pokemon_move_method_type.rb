Types::PokemonMoveMethodType = GraphQL::ObjectType.define do
  name "PokemonMoveMethod"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :pokemonMoveMethod, Types::VersionGroupPokemonMoveMethodType, "", property: :version_group_pokemon_move_methods
end
