class PokemonDexNumber < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :species_id
  belongs_to :pokedex, foreign_key: :pokedex_id
end
