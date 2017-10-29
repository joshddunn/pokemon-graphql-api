class SuperContestCombo < ApplicationRecord
  belongs_to :super_contest_combo_first_move, class_name: "Move", foreign_key: :first_move_id
  belongs_to :super_contest_combo_second_move, class_name: "Move", foreign_key: :second_move_id
end
