Types::ConquestWarriorSkillType = GraphQL::ObjectType.define do
  name "ConquestWarriorSkill"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :conquestWarriorRanks, !types[Types::ConquestWarriorRankType], "", property: :conquest_warrior_ranks
  field :conquestWarriorSkillNames, !types[Types::ConquestWarriorSkillNameType], "", property: :conquest_warrior_skill_names
end
