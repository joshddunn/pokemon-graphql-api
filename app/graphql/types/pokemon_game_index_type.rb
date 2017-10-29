Types::PokemonGameIndexType = GraphQL::ObjectType.define do
  name "PokemonGameIndex"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemon, Types::PokemonType, "", property: :pokemon
  field :version, Types::VersionType, "", property: :version
  field :gameIndex, !types.Int, "", property: :game_index

end
