class PokemonMoveMethod < ApplicationRecord
  has_many :pokemon_move_method_proses, foreign_key: :pokemon_move_method_id
  has_many :pokemon_moves, foreign_key: :pokemon_move_method_id
  has_many :version_group_pokemon_move_methods, foreign_key: :pokemon_move_method_id
end
