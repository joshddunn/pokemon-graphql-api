class Nature < ApplicationRecord
  belongs_to :decreased_stat, class_name: "Stat", foreign_key: :decreased_stat_id
  belongs_to :increased_stat, class_name: "Stat", foreign_key: :increased_stat_id
  belongs_to :likes_flavor, class_name: "BerryFlavor", foreign_key: :likes_flavor_id
  belongs_to :hates_flavor, class_name: "BerryFlavor", foreign_key: :hates_flavor_id

  has_many :nature_battle_style_preferences, foreign_key: :nature_id
  has_many :nature_names, foreign_key: :nature_id
  has_many :nature_pokeathlon_stats, foreign_key: :nature_id
end
