Types::ConquestWarriorStatType = GraphQL::ObjectType.define do
  name "ConquestWarriorStat"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :conquestWarriorRankStatMaps, !types[Types::ConquestWarriorRankStatMapType], "", property: :conquest_warrior_rank_stat_maps
  field :conquestWarriorStatNames, !types[Types::ConquestWarriorStatNameType], "", property: :conquest_warrior_stat_names
end
