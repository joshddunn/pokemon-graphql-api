class PokemonHabitatName < ApplicationRecord
  belongs_to :pokemon_habitat, foreign_key: :pokemon_habitat_id
  belongs_to :language, foreign_key: :local_language_id
end
