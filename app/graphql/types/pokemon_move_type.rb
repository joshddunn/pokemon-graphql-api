Types::PokemonMoveType = GraphQL::ObjectType.define do
  name "PokemonMove"
  description ""

  field :id, types.ID, "", property: :id
  field :pokemon, Types::PokemonType, "", property: :pokemon
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :move, Types::MoveType, "", property: :move
  field :pokemonMoveMethod, Types::PokemonMoveMethodType, "", property: :pokemon_move_method
  field :level, types.Int, "", property: :level
  field :order, types.Int, "", property: :order

end
