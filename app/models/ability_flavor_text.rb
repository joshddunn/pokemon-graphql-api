class AbilityFlavorText < ApplicationRecord
  belongs_to :ability, foreign_key: :ability_id
  belongs_to :version_group, foreign_key: :version_group_id
  belongs_to :language, foreign_key: :language_id
end
