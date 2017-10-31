class ConquestWarriorSkill < ApplicationRecord
  has_many :conquest_warrior_ranks, column: :skill_id
  has_many :conquest_warrior_skill_names, column: :skill_id
end
