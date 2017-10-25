class LocationArea < ApplicationRecord
  has_many :encounters, foreign_key: :location_area_id
end
