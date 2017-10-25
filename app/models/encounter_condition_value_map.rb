class EncounterConditionValueMap < ApplicationRecord
  belongs_to :encounter, foreign_key: :encounter_id
  belongs_to :encounter_condition_value, foreign_key: :encounter_condition_value_id
end
