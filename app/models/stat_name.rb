class StatName < ApplicationRecord
  belongs_to :stat, foreign_key: :stat_id
  belongs_to :language, foreign_key: :local_language_id
end
