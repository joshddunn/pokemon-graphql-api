class MoveBattleStyle < ApplicationRecord
  has_many :move_battle_style_proses, foreign_key: :move_battle_style_id
  has_many :nature_battle_style_preferences, foreign_key: :move_battle_style_id
end
