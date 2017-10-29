class MoveTarget < ApplicationRecord
  has_many :move_target_proses, foreign_key: :move_target_id
  has_many :moves, foreign_key: :target_id
end
