class PokemonSpecy < ApplicationRecord
  has_many :pokemons, foreign_key: :species_id
end
