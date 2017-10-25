class ItemFlavorText < ApplicationRecord
  belongs_to :item, foreign_key: :item_id
  belongs_to :version_group, foreign_key: :version_group_id
  belongs_to :language, foreign_key: :language_id
end
