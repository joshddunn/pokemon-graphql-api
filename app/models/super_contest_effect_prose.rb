class SuperContestEffectProse < ApplicationRecord
  belongs_to :contest_effect, foreign_key: :contest_effect_id
  belongs_to :language, foreign_key: :local_language_id
end
