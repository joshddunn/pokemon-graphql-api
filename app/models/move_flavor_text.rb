class MoveFlavorText < ApplicationRecord
  belongs_to :move, foreign_key: :move_id
  belongs_to :version_group, foreign_key: :version_group_id
  belongs_to :language, foreign_key: :language_id
end
