class MoveEffect < ApplicationRecord
  has_many :move_changelogs, foreign_key: :effect_id
  has_many :move_effect_changelogs, foreign_key: :effect_id
  has_many :move_effect_proses, foreign_key: :move_effect_id
  has_many :moves, foreign_key: :effect_id
end
