class PokemonShapeProse < ApplicationRecord
  belongs_to :pokemon_shape, foreign_key: :pokemon_shape_id
  belongs_to :language, foreign_key: :local_language_id
end
