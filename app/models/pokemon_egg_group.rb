class PokemonEggGroup < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :species_id
  belongs_to :egg_group, foreign_key: :egg_group_id
end
