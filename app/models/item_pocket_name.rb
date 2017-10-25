class ItemPocketName < ApplicationRecord
  belongs_to :item_pocket, foreign_key: :item_pocket_id
  belongs_to :language, foreign_key: :local_language_id
end
