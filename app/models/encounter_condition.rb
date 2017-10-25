class EncounterCondition < ApplicationRecord
  has_many :encounter_condition_proses, foreign_key: :encounter_condition_id
  has_many :encounter_condition_values, foreign_key: :encounter_condition_id
end
