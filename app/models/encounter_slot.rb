class EncounterSlot < ApplicationRecord
  belongs_to :version_group, foreign_key: :version_group_id
  belongs_to :encounter_method, foreign_key: :encounter_method_id

  has_many :encounters, foreign_key: :encounter_slot_id
end
