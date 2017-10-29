class SuperContestEffectProse < ApplicationRecord
  belongs_to :super_contest_effect, foreign_key: :super_contest_effect_id
  belongs_to :language, foreign_key: :local_language_id
end
