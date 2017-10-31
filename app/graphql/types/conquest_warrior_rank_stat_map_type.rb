Types::ConquestWarriorRankStatMapType = GraphQL::ObjectType.define do
  name "ConquestWarriorRankStatMap"
  description ""

  field :id, !types.ID, "", property: :id
  field :warriorRank, Types::ConquestWarriorRankType, "", property: :conquest_warrior_rank
  field :warriorStat, Types::ConquestWarriorStatType, "", property: :conquest_warrior_stat
  field :baseStat, !types.Int, "", property: :base_stat

end
