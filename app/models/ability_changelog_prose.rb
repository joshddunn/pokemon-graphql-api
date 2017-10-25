class AbilityChangelogProse < ApplicationRecord
  belongs_to :ability_changelog, foreign_key: :ability_changelog_id
  belongs_to :language, foreign_key: :local_language_id
end
