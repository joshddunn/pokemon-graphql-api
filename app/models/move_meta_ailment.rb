class MoveMetaAilment < ApplicationRecord
  has_many :move_meta, foreign_key: :meta_ailment_id
  has_many :move_meta_ailment_names, foreign_key: :move_meta_ailment_id
end
