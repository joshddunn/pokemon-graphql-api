class ConquestWarriorRank < ApplicationRecord
  belongs_to :conquest_warrior, foreign_key: :warrior_id
  belongs_to :conquest_warrior_skill, foreign_key: :skill_id

  has_many :conquest_max_links, foreign_key: :warrior_rank_id
  has_many :conquest_warrior_rank_stat_maps, foreign_key: :warrior_rank_id
  has_many :conquest_warrior_transformations, foreign_key: :transformed_warrior_rank_id
  has_many :conquest_transformation_pokemons, foreign_key: :transformation_id
  has_many :conquest_transformation_warriors, foreign_key: :transformation_id
end
