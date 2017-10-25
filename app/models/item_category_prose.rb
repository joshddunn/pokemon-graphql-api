class ItemCategoryProse < ApplicationRecord
  belongs_to :item_category, foreign_key: :item_category_id
  belongs_to :language, foreign_key: :local_language_id
end
