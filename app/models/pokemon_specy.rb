class PokemonSpecy < ApplicationRecord
  belongs_to :pokemon_color, foreign_key: :color_id
  belongs_to :pokemon_specy, foreign_key: :evolves_from_species_id
  
  has_many :pokemons, foreign_key: :species_id
  has_many :pokemon_species, foreign_key: :evolves_from_species_id
  has_many :pal_parks, foreign_key: :species_id
end
