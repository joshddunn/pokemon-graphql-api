class ConquestMoveDisplacement < ApplicationRecord
  has_many :conquest_move_data, foreign_key: :displacement_id
  has_many :conquest_move_displacement_proses, foreign_key: :move_displacement_id
end
