class ItemCategory < ApplicationRecord
  belongs_to :item_pocket, foreign_key: :pocket_id

  has_many :item_category_proses, foreign_key: :item_category_id
  has_many :items, foreign_key: :category_id
end
