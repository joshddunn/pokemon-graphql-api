class ConquestMoveDisplacementProse < ApplicationRecord
    belongs_to :conquest_move_displacement, foreign_key: :move_displacement_id
    belongs_to :language, foreign_key: :local_language_id
end
