class PokemonMoveMethodProse < ApplicationRecord
  belongs_to :pokemon_move_method, foreign_key: :pokemon_move_method_id
  belongs_to :language, foreign_key: :local_language_id
end
