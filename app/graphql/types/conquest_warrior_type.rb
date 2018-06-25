Types::ConquestWarriorType = GraphQL::ObjectType.define do
  name 'ConquestWarrior'
  description ''

  field :id, types.ID, '', property: :id
  field :identifier, types.String, '', property: :identifier
  field :gender, Types::GenderType, '', property: :gender
  field :archetype, Types::ConquestWarriorArchetypeType, '',
        property: :conquest_warrior_archetype

  field :conquestEpisodeWarriors, types[Types::ConquestEpisodeWarriorType], '',
        property: :conquest_episode_warriors
  field :conquestTransformationWarriors,
        types[Types::ConquestTransformationWarriorType], '',
        property: :conquest_transformation_warriors
  field :conquestWarriorNames, types[Types::ConquestWarriorNameType], '',
        property: :conquest_warrior_names
  field :conquestWarriorRanks, types[Types::ConquestWarriorRankType], '',
        property: :conquest_warrior_ranks
  field :conquestWarriorSpecialties,
        types[Types::ConquestWarriorSpecialtyType], '',
        property: :conquest_warrior_specialties
  field :conquestWarriorTransformations,
        types[Types::ConquestWarriorTransformationType], '',
        property: :conquest_warrior_transformations
end
