Types::ConquestWarriorTransformationType = GraphQL::ObjectType.define do
  name 'ConquestWarriorTransformation'
  description ''

  field :id, types.ID, '', property: :id
  field :transformedWarriorRank, Types::ConquestWarriorRankType, '',
        property: :conquest_warrior_rank
  field :isAutomatic, types.Boolean, '', property: :is_automatic
  field :requiredLink, types.Int, '', property: :required_link
  field :completedEpisode, Types::ConquestEpisodeType, '',
        property: :conquest_episode
  field :currentEpisode, Types::ConquestEpisodeType, '',
        property: :conquest_episode
  field :distantWarrior, Types::ConquestWarriorType, '',
        property: :conquest_warrior
  field :femaleWarlordCount, types.Int, '', property: :female_warlord_count
  field :pokemonCount, types.Int, '', property: :pokemon_count
  field :collectionType, Types::TypeType, '', property: :type
  field :warriorCount, types.Int, '', property: :warrior_count
end
