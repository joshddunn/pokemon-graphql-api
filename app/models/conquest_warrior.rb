class ConquestWarrior < ApplicationRecord
  belongs_to :gender, foreign_key: :gender_id
  belongs_to :conquest_warrior_archetype, foreign_key: :archetype_id

  has_many :conquest_episode_warriors, foreign_key: :warrior_id
  has_many :conquest_transformation_warriors, foreign_key: :present_warrior_id
  has_many :conquest_warrior_names, foreign_key: :warrior_id
  has_many :conquest_warrior_ranks, foreign_key: :warrior_id
  has_many :conquest_warrior_specialties, foreign_key: :warrior_id
  has_many :conquest_warrior_transformations, foreign_key: :distant_warrior_id
end
