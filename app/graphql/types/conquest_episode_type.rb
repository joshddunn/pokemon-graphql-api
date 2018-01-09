Types::ConquestEpisodeType = GraphQL::ObjectType.define do
  name "ConquestEpisode"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :conquestEpisodeNames, types[Types::ConquestEpisodeNameType], "", property: :conquest_episode_names
  field :conquestEpisodeWarriors, types[Types::ConquestEpisodeWarriorType], "", property: :conquest_episode_warriors
  field :completedEpisodes, types[Types::ConquestWarriorTransformationType], "", property: :completed_episodes
  field :currentEpisodes, types[Types::ConquestWarriorTransformationType], "", property: :current_episodes
end
