class EvolutionTrigger < ApplicationRecord
  has_many :evolution_trigger_proses, foreign_key: :evolution_trigger_id
  has_many :pokemon_evolutions, foreign_key: :evolution_trigger_id
end
