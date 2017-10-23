Types::PokemonGameIndexType = GraphQL::ObjectType.define do
  name "PokemonGameIndex"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemon, !types.Int, "", property: :pokemon_id
  field :version, !types.Int, "", property: :version_id
  field :gameIndex, !types.Int, "", property: :game_index
end
