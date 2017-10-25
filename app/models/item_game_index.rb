class ItemGameIndex < ApplicationRecord
  belongs_to :item, foreign_key: :item_id
  belongs_to :generation, foreign_key: :generation_id
end
