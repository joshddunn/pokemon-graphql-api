class PokemonHabitat < ApplicationRecord
  has_many :pokemon_habitat_names, foreign_key: :pokemon_habitat_id
  has_many :pokemon_species, foreign_key: :habitat_id
end
