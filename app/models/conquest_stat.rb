class ConquestStat < ApplicationRecord
  has_many :conquest_pokemon_stats, foreign_key: :conquest_stat_id
  has_many :conquest_stat_names, foreign_key: :conquest_stat_id
end
