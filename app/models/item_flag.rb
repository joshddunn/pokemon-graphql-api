class ItemFlag < ApplicationRecord
  has_many :item_flag_maps, foreign_key: :item_flag_id
  has_many :item_flag_proses, foreign_key: :item_flag_id
end
