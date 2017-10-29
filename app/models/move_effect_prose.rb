class MoveEffectProse < ApplicationRecord
  belongs_to :move_effect, foreign_key: :move_effect_id
  belongs_to :language, foreign_key: :local_language_id
end
