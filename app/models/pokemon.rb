class Pokemon < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :species_id

  has_many :encounters, foreign_key: :pokemon_id
  has_many :pokemon_abilities, foreign_key: :pokemon_id
  has_many :pokemon_forms, foreign_key: :pokemon_id
  has_many :pokemon_game_indices, foreign_key: :pokemon_id
  has_many :pokemon_items, foreign_key: :pokemon_id
  has_many :pokemon_moves, foreign_key: :pokemon_id
  has_many :pokemon_stats, foreign_key: :pokemon_id
  has_many :pokemon_types, foreign_key: :pokemon_id
end
