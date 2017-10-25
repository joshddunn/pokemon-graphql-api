class VersionGroup < ApplicationRecord
  has_many :ability_changelogs, foreign_key: :changed_in_version_group_id
  has_many :ability_flavor_texts, foreign_key: :version_group_id
  has_many :encounter_slots, foreign_key: :version_group_id
  has_many :item_flavor_texts, foreign_key: :version_group_id
end
