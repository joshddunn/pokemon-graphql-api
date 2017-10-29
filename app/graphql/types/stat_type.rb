Types::StatType = GraphQL::ObjectType.define do
  name "Stat"
  description ""

  field :id, !types.ID, "", property: :id
  field :damageClass, Types::MoveDamageClassType, "", property: :move_damage_class
  field :identifier, !types.String, "", property: :identifier
  field :isBattleOnly, !types.Boolean, "", property: :is_battle_only
  field :gameIndex, !types.Int, "", property: :game_index

  field :stat, Types::StatNameType, "", property: :stat_names
  field :decreasedStat, Types::DecreasedStatType, "", property: :decreased_stats
  field :increasedStat, Types::IncreasedStatType, "", property: :increased_stats
end
