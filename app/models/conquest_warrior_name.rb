class ConquestWarriorName < ApplicationRecord
  belongs_to :conquest_warrior, foreign_key: :warrior_id
  belongs_to :language, foreign_key: :local_language_id
end
