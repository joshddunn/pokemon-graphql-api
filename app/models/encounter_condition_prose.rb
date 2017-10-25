class EncounterConditionProse < ApplicationRecord
  belongs_to :encounter_condition, foreign_key: :encounter_condition_id
  belongs_to :language, foreign_key: :local_language_id
end
