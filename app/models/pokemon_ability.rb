class PokemonAbility < ApplicationRecord
  belongs_to :pokemon, foreign_key: :pokemon_id
  belongs_to :ability, foreign_key: :ability_id
end
