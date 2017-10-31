class ConquestMoveDatum < ApplicationRecord
    belongs_to :move, foreign_key: :move_id
    belongs_to :conquest_move_effect, foreign_key: :effect_id
    belongs_to :conquest_move_range, foreign_key: :range_id
    belongs_to :conquest_move_displacement, foreign_key: :displacement_id
end
