class LocationArea < ApplicationRecord
  belongs_to :location, foreign_key: :location_id

  has_many :encounters, foreign_key: :location_area_id
  has_many :location_area_encounter_rates, foreign_key: :location_area_id
  has_many :location_area_proses, foreign_key: :location_area_id
end
