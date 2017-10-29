class PokemonShape < ApplicationRecord
  has_many :pokemon_shape_proses, foreign_key: :pokemon_shape_id
  has_many :pokemon_species, foreign_key: :shape_id
end
