class ConquestMoveEffect < ApplicationRecord
  has_many :conquest_move_data, foreign_key: :effect_id
  has_many :conquest_move_effect_proses, foreign_key: :conquest_move_effect_id
end
