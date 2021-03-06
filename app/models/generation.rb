class Generation < ApplicationRecord
  belongs_to :region, foreign_key: :main_region_id

  has_many :abilities, foreign_key: :generation_id
  has_many :generation_names, foreign_key: :generation_id
  has_many :item_game_indices, foreign_key: :generation_id
  has_many :location_game_indices, foreign_key: :generation_id
  has_many :moves, foreign_key: :generation_id
  has_many :pokemon_form_generations, foreign_key: :generation_id
  has_many :pokemon_species, foreign_key: :generation_id
  has_many :type_game_indices, foreign_key: :generation_id
  has_many :types, foreign_key: :generation_id
  has_many :version_groups, foreign_key: :generation_id
end
