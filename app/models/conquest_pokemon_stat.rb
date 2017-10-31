class ConquestPokemonStat < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :pokemon_species_id
  belongs_to :conquest_stat, foreign_key: :conquest_stat_id
end
