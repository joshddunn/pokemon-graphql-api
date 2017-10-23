Types::PokemonStatType = GraphQL::ObjectType.define do
  name "PokemonStat"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemon, !types.Int, "", property: :pokemon_id
  field :stat, !types.Int, "", property: :stat_id
  field :baseStat, !types.Int, "", property: :base_stat
  field :effort, !types.Int, "", property: :effort
end