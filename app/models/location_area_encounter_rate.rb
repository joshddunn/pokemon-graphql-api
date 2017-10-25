class LocationAreaEncounterRate < ApplicationRecord
  belongs_to :location_area, foreign_key: :location_area_id
  belongs_to :encounter_method, foreign_key: :encounter_method_id
  belongs_to :version, foreign_key: :version_id
end
