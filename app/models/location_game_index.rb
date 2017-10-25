class LocationGameIndex < ApplicationRecord
  belongs_to :location, foreign_key: :location_id
  belongs_to :generation, foreign_key: :generation_id
end
