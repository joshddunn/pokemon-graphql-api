class ItemPocket < ApplicationRecord
  has_many :item_categories, foreign_key: :pocket_id
  has_many :item_pocket_names, foreign_key: :item_pocket_id
end
