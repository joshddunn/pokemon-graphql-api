class MoveBattleStyleProse < ApplicationRecord
  belongs_to :move_battle_styles, foreign_key: :move_battle_style_id
  belongs_to :language, foreign_key: :local_language_id
end
