class PokemonColor < ApplicationRecord
  has_many :pokemon_species, foreign_key: :color_id
  has_many :pokemon_color_names, foreign_key: :pokemon_color_id
end
