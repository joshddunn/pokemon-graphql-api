Types::ConquestEpisodeNameType = GraphQL::ObjectType.define do
  name "ConquestEpisodeName"
  description ""

  field :id, types.ID, "", property: :id
  field :episode, Types::ConquestEpisodeType, "", property: :conquest_episode
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
