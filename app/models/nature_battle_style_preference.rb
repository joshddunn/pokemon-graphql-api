class NatureBattleStylePreference < ApplicationRecord
  belongs_to :nature, foreign_key: :nature_id
  belongs_to :move_battle_style, foreign_key: :move_battle_style_id
end
