class PokemonMoveMethod < ApplicationRecord
  has_many :pokemon_move_method_proses, foreign_key: :pokemon_move_method_id
  has_many :pokemon_moves, foreign_key: :pokemon_move_method_id
end
