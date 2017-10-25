class ContestCombo < ApplicationRecord
  belongs_to :first_move, class_name: "Move", foreign_key: :first_move_id
  belongs_to :second_move, class_name: "Move", foreign_key: :second_move_id
end
