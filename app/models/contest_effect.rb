class ContestEffect < ApplicationRecord
  belongs_to :contest_effect, foreign_key: :contest_effect_id
  belongs_to :language, foreign_key: :local_language_id

  has_many :contest_effect_proses, foreign_key: :contest_effect_id
  has_many :moves, foreign_key: :contest_effect_id
end
