class LocationName < ApplicationRecord
  belongs_to :location, foreign_key: :location_id
  belongs_to :language, foreign_key: :local_language_id
end
