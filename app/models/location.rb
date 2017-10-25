class Location < ApplicationRecord
  belongs_to :region, foreign_key: :region_id

  has_many :location_areas, foreign_key: :location_id
  has_many :location_game_indices, foreign_key: :location_id
  has_many :location_names, foreign_key: :location_id
end
