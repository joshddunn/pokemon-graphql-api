class Item < ApplicationRecord
  has_many :berries, foreign_key: :item_id
end
