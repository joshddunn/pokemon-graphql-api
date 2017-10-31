class Type < ApplicationRecord
  belongs_to :generation, foreign_key: :generation_id
  belongs_to :move_damage_class, foreign_key: :damage_class_id

  has_many :berries, foreign_key: :natural_gift_type_id
  has_many :move_changelogs, foreign_key: :type_id
  has_many :moves, foreign_key: :type_id
  has_many :known_move_types, class_name: "PokemonEvolution", foreign_key: :known_move_type_id
  has_many :party_types, class_name: "PokemonEvolution", foreign_key: :party_type_id
  has_many :pokemon_types, foreign_key: :type_id
  has_many :damage_types, class_name: "TypeEfficacy", foreign_key: :damage_type_id
  has_many :target_types, class_name: "TypeEfficacy", foreign_key: :target_type_id
  has_many :type_game_indices, foreign_key: :type_id
  has_many :type_names, foreign_key: :type_id
  has_many :conquest_kingdoms, foreign_key: :type_id
  has_many :conquest_warrior_specialties, foreign_key: :type_id
  has_many :conquest_warrior_transformations, foreign_key: :collection_type_id
end
