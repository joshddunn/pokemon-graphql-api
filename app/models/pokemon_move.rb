class PokemonMove < ApplicationRecord
  belongs_to :pokemon, foreign_key: :pokemon_id
  belongs_to :version_group, foreign_key: :version_group_id
  belongs_to :move, foreign_key: :move_id
  belongs_to :pokemon_move_method, foreign_key: :pokemon_move_method_id
end
