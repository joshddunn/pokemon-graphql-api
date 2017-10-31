class ConquestMoveRangeProse < ApplicationRecord
  belongs_to :conquest_move_range, foreign_key: :conquest_move_range_id
  belongs_to :language, foreign_key: :local_language_id
end
