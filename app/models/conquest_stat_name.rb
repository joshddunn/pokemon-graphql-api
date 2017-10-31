class ConquestStatName < ApplicationRecord
  belongs_to :conquest_stat, foreign_key: :conquest_stat_id
  belongs_to :language, foreign_key: :local_language_id
end
