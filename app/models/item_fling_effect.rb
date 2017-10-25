class ItemFlingEffect < ApplicationRecord
  has_many :item_fling_effect_proses, foreign_key: :item_fling_effect_id
  has_many :items, foreign_key: :fling_effect_id
end
