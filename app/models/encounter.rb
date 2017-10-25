class Encounter < ApplicationRecord
  has_many :encounter_condition_value_maps, foreign_key: :encounter_id

  belongs_to :version, foreign_key: :version_id
  belongs_to :location_area, foreign_key: :location_area_id
  belongs_to :encounter_slot, foreign_key: :encounter_slot_id
  belongs_to :pokemon, foreign_key: :pokemon_id
end
