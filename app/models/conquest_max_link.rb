class ConquestMaxLink < ApplicationRecord
  belongs_to :conquest_warrior_rank, foreign_key: :warrior_rank_id
  belongs_to :pokemon_specy, foreign_key: :pokemon_species_id
end
