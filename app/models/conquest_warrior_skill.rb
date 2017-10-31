class ConquestWarriorSkill < ApplicationRecord
  has_many :conquest_warrior_ranks, foreign_key: :skill_id
  has_many :conquest_warrior_skill_names, foreign_key: :skill_id
end
