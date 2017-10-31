class ConquestPokemonAbility < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :pokemon_species_id
  belongs_to :ability, foreign_key: :ability_id
end
