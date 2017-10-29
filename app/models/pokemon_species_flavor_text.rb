class PokemonSpeciesFlavorText < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :species_id
  belongs_to :version, foreign_key: :version_id
  belongs_to :language, foreign_key: :language_id
end
