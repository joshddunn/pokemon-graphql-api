class ConquestPokemonMove < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :pokemon_species_id
  belongs_to :move, foreign_key: :move_id
end
