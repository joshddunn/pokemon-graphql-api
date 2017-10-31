class ConquestWarriorSkillName < ApplicationRecord
  belongs_to :conquest_warrior_skill, foreign_key: :skill_id
  belongs_to :language, foreign_key: :local_language_id
end
