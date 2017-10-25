class EncounterMethod < ApplicationRecord
  has_many :encounter_method_proses, foreign_key: :encounter_method_id
  has_many :encounter_slots, foreign_key: :encounter_method_id
end
