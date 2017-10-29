class MoveFlagMap < ApplicationRecord
  belongs_to :move, foreign_key: :move_id
  belongs_to :move_flag, foreign_key: :move_flag_id
end
