class MoveFlavorSummary < ApplicationRecord
  belongs_to :move, foreign_key: :move_id
  belongs_to :language, foreign_key: :local_language_id
end
