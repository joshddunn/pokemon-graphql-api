class Version < ApplicationRecord
  has_many :encounters, foreign_key: :version_id
  has_many :location_area_encounter_rates, foreign_key: :version_id
end
