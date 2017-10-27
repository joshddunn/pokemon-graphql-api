class Machine < ApplicationRecord
  belongs_to :version_group, foreign_key: :version_group_id
  belongs_to :item, foreign_key: :item_id
  belongs_to :move, foreign_key: :move_id
end
