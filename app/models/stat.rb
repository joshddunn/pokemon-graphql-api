class Stat < ApplicationRecord
  belongs_to :move_damage_class, foreign_key: :damage_class_id

  has_many :characteristics, foreign_key: :stat_id
  has_many :move_meta_stat_changes, foreign_key: :stat_id
  has_many :decreased_stats, class_name: "Nature", foreign_key: :decreased_stat_id
  has_many :increased_stats, class_name: "Nature", foreign_key: :increased_stat_id
  has_many :pokemon_stats, foreign_key: :stat_id
  has_many :stat_names, foreign_key: :stat_id
  has_many :conquest_pokemon_evolutions, foreign_key: :stat_id
end
