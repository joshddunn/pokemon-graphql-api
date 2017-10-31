class ConquestWarriorStatName < ApplicationRecord
  belongs_to :conquest_warrior_stat, foreign_key: :warrior_stat_id
  belongs_to :language, foreign_key: :local_language_id
end
