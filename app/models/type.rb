class Type < ApplicationRecord
  has_many :berries, foreign_key: :natural_gift_type_id
  has_many :move_changelogs, foreign_key: :type_id
  has_many :moves, foreign_key: :type_id
  has_many :known_move_types, class_name: "PokemonEvolution", foreign_key: :known_move_type_id
  has_many :party_types, class_name: "PokemonEvolution", foreign_key: :party_type_id
  has_many :pokemon_types, foreign_key: :type_id
end
