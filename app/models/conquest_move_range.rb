class ConquestMoveRange < ApplicationRecord
  has_many :conquest_move_data, foreign_key: :range_id
  has_many :conquest_move_range_proses, foreign_key: :conquest_move_range_id
end
