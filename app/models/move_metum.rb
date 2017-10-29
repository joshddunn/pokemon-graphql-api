class MoveMetum < ApplicationRecord
  belongs_to :move, foreign_key: :move_id
  belongs_to :move_meta_category, foreign_key: :meta_category_id
  belongs_to :move_meta_ailment, foreign_key: :meta_ailment_id
end
