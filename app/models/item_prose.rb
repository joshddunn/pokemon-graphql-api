class ItemProse < ApplicationRecord
  belongs_to :item, foreign_key: :item_id
  belongs_to :language, foreign_key: :local_language_id
end
