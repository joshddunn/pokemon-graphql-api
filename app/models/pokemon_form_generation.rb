class PokemonFormGeneration < ApplicationRecord
  belongs_to :pokemon_form, foreign_key: :pokemon_form_id
  belongs_to :generation, foreign_key: :generation_id
end
