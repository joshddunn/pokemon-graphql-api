class MoveDamageClass < ApplicationRecord
  has_many :move_damage_class_proses, foreign_key: :move_damage_class_id
  has_many :moves, foreign_key: :damage_class_id
  has_many :stats, foreign_key: :damage_class_id
  has_many :types, foreign_key: :damage_class_id
end
