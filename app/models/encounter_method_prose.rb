class EncounterMethodProse < ApplicationRecord
  belongs_to :encounter_method, foreign_key: :encounter_method_id
  belongs_to :language, foreign_key: :local_language_id
end
