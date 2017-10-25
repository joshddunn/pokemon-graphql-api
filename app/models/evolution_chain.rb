class EvolutionChain < ApplicationRecord
  belongs_to :item, foreign_key: :baby_trigger_item_id
end
