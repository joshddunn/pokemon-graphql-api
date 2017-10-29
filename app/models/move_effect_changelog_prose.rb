class MoveEffectChangelogProse < ApplicationRecord
  belongs_to :move_effect_changelog, foreign_key: :move_effect_changelog_id
  belongs_to :language, foreign_key: :local_language_id
end
