class PokemonType < ApplicationRecord
  belongs_to :pokemon, foreign_key: :pokemon_id
  belongs_to :type, foreign_key: :type_id
end
