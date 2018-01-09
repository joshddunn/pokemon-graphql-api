Types::ConquestEpisodeWarriorType = GraphQL::ObjectType.define do
  name "ConquestEpisodeWarrior"
  description ""

  field :id, types.ID, "", property: :id
  field :episode, Types::ConquestEpisodeType, "", property: :conquest_episode
  field :warrior, Types::ConquestWarriorType, "", property: :conquest_warrior

end
