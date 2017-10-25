class ItemFlagMap < ApplicationRecord
  belongs_to :item, foreign_key: :item_id
  belongs_to :item_flag, foreign_key: :item_flag_id
end
