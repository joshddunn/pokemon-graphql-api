class EvolutionTrigger < ApplicationRecord
  has_many :evolution_trigger_proses, foreign_key: :evolution_trigger_id
end
