class LocationAreaProse < ApplicationRecord
  belongs_to :location_area, foreign_key: :location_area_id
  belongs_to :language, foreign_key: :local_language_id
end
