class PokemonColorName < ApplicationRecord
  belongs_to :pokemon_color, foreign_key: :pokemon_color_id
  belongs_to :language, foreign_key: :local_language_id
end
