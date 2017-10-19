class PokemonColor < ApplicationRecord
  has_many :pokemon_species, foreign_key: :color_id
end
