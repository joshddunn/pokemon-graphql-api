class ConquestMoveEffectProse < ApplicationRecord
  belongs_to :conquest_move_effect, foreign_key: :conquest_move_effect_id
  belongs_to :language, foreign_key: :local_language_id
end
