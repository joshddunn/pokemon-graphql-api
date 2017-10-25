class EvolutionTriggerProse < ApplicationRecord
  belongs_to :evolution_trigger, foreign_key: :evolution_trigger_id
  belongs_to :language, foreign_key: :local_language_id
end
