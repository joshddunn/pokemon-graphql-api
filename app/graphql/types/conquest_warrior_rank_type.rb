Types::ConquestWarriorRankType = GraphQL::ObjectType.define do
  name "ConquestWarriorRank"
  description ""

  field :id, types.ID, "", property: :id
  field :warrior, Types::ConquestWarriorType, "", property: :conquest_warrior
  field :rank, types.Int, "", property: :rank
  field :skill, Types::ConquestWarriorSkillType, "", property: :conquest_warrior_skill

  field :conquestMaxLinks, types[Types::ConquestMaxLinkType], "", property: :conquest_max_links
  field :conquestWarriorRankStatMaps, types[Types::ConquestWarriorRankStatMapType], "", property: :conquest_warrior_rank_stat_maps
  field :conquestWarriorTransformations, types[Types::ConquestWarriorTransformationType], "", property: :conquest_warrior_transformations
  field :conquestTransformationPokemons, types[Types::ConquestTransformationPokemonType], "", property: :conquest_transformation_pokemons
  field :conquestTransformationWarriors, types[Types::ConquestTransformationWarriorType], "", property: :conquest_transformation_warriors
end
