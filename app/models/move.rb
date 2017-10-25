class Move < ApplicationRecord
  has_many :contest_combo_first_moves, class_name: "ContestCombo", foreign_key: :first_move_id
  has_many :contest_combo_second_moves, class_name: "ContestCombo", foreign_key: :second_move_id
end
