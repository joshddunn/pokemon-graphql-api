Types::ConquestTransformationWarriorType = GraphQL::ObjectType.define do
  name "ConquestTransformationWarrior"
  description ""

  field :id, !types.ID, "", property: :id
  field :transformation, Types::ConquestWarriorRankType, "", property: :conquest_warrior_rank
  field :presentWarrior, Types::ConquestWarriorType, "", property: :conquest_warrior

end
