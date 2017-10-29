class MoveFlag < ApplicationRecord
  has_many :move_flag_maps, foreign_key: :move_flag_id
  has_many :move_flag_proses, foreign_key: :move_flag_id
end
