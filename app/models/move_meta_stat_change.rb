class MoveMetaStatChange < ApplicationRecord
  belongs_to :move, foreign_key: :move_id
  belongs_to :stat, foreign_key: :stat_id
end
