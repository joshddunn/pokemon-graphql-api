class MoveMetaCategory < ApplicationRecord
  has_many :move_meta, foreign_key: :meta_category_id
  has_many :move_meta_category_proses, foreign_key: :move_meta_category_id
end
