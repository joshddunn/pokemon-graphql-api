class MoveFlagProse < ApplicationRecord
  belongs_to :move_flag, foreign_key: :move_flag_id
  belongs_to :language, foreign_key: :local_language_id
end
