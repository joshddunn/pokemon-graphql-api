class EggGroup < ApplicationRecord
  has_many :egg_group_proses, foreign_key: :egg_group_id
  has_many :pokemon_egg_groups, foreign_key: :egg_group_id
end
