class PokemonSpeciesFlavorSummary < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :pokemon_species_id
  belongs_to :language, foreign_key: :local_language_id
end
