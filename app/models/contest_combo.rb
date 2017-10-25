class ContestCombo < ApplicationRecord
  belongs_to :first_move, class: "Move", foreign_key: :first_move_id
  belongs_to :second_move, class: "Move", foreign_key: :second_move_id
end
