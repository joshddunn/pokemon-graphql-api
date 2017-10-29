class PokeathlonStat < ApplicationRecord
  has_many :nature_pokeathlon_stats, foreign_key: :pokeathlon_stat_id
  has_many :pokeathlon_stat_names, foreign_key: :pokeathlon_stat_id
end
