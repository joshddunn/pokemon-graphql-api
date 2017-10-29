class MoveEffectChangelog < ApplicationRecord
  belongs_to :move_effect, foreign_key: :effect_id
  belongs_to :version_group, foreign_key: :changed_in_version_group_id

  has_many :move_effect_changelog_proses, foreign_key: :move_effect_changelog_id
end
