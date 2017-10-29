class Version < ApplicationRecord
  belongs_to :version_group, foreign_key: :version_group_id

  has_many :encounters, foreign_key: :version_id
  has_many :location_area_encounter_rates, foreign_key: :version_id
  has_many :pokemon_game_indices, foreign_key: :version_id
  has_many :pokemon_items, foreign_key: :version_id
  has_many :pokemon_species_flavor_texts, foreign_key: :version_id
  has_many :version_names, foreign_key: :version_id
end
