class AbilityChangelog < ApplicationRecord
  belongs_to :ability, foreign_key: :ability_id
  belongs_to :version_group, foreign_key: :changed_in_version_group_id

  has_many :ability_changelog_proses, foreign_key: :ability_changelog_id
end
