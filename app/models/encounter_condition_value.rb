class EncounterConditionValue < ApplicationRecord
  has_many :encounter_condition_value_maps, foreign_key: :encounter_condition_value_id
  has_many :encounter_condition_value_proses, foreign_key: :encounter_condition_value_id

  belongs_to :encounter_condition, foreign_key: :encounter_condition_id
end
