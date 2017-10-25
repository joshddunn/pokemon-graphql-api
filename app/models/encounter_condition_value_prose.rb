class EncounterConditionValueProse < ApplicationRecord
  belongs_to :encounter_condition_value, foreign_key: :encounter_condition_value_id
  belongs_to :language, foreign_key: :local_language_id
end
