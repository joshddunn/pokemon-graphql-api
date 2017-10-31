class ConquestTransformationPokemon < ApplicationRecord
  belongs_to :conquest_warrior_rank, foreign_key: :transformation_id
  belongs_to :pokemon_specy, foreign_key: :pokemon_species_id
end
