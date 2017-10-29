Types::PokemonStatType = GraphQL::ObjectType.define do
  name "PokemonStat"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemon, Types::PokemonType, "", property: :pokemon
  field :stat, Types::StatType, "", property: :stat
  field :baseStat, !types.Int, "", property: :base_stat
  field :effort, !types.Int, "", property: :effort

end
