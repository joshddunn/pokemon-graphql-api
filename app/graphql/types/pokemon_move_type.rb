Types::PokemonMoveType = GraphQL::ObjectType.define do
  name "PokemonMove"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemon, !types.Int, "", property: :pokemon_id
  field :versionGroup, !types.Int, "", property: :version_group_id
  field :move, !types.Int, "", property: :move_id
  field :pokemonMoveMethod, !types.Int, "", property: :pokemon_move_method_id
  field :level, !types.Int, "", property: :level
  field :order, !types.Int, "", property: :order
end
