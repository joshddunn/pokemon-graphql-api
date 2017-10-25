class AbilityProse < ApplicationRecord
  belongs_to :ability, foreign_key: :ability_id
  belongs_to :language, foreign_key: :local_language_id
end
