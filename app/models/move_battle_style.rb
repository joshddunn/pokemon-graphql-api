class MoveBattleStyle < ApplicationRecord
  has_many :move_battle_style_proses, foreign_key: :move_battle_style_id
end
