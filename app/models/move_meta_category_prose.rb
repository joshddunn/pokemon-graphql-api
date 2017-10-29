class MoveMetaCategoryProse < ApplicationRecord
  belongs_to :move_meta_category, foreign_key: :move_meta_category_id
  belongs_to :language, foreign_key: :local_language_id
end
