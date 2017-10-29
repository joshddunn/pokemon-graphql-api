class PokemonStat < ApplicationRecord
  belongs_to :pokemon, foreign_key: :pokemon_id
  belongs_to :stat, foreign_key: :stat_id
end
