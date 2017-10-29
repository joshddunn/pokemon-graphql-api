class EvolutionChain < ApplicationRecord
  belongs_to :item, foreign_key: :baby_trigger_item_id

  has_many :pokemon_species, foreign_key: :evolution_chain_id
end
