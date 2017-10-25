class EncounterMethod < ApplicationRecord
  has_many :encounter_method_proses, foreign_key: :encounter_method_id
  has_many :encounter_slots, foreign_key: :encounter_method_id
  has_many :location_area_encounter_rates, foreign_key: :encounter_method_id
end
