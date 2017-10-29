class MoveTargetProse < ApplicationRecord
  belongs_to :move_target, foreign_key: :move_target_id
  belongs_to :language, foreign_key: :local_language_id
end
