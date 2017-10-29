class MoveChangelog < ApplicationRecord
  belongs_to :move, foreign_key: :move_id
  belongs_to :version_group, foreign_key: :changed_in_version_group_id
  belongs_to :type, foreign_key: :type_id
  belongs_to :move_effect, foreign_key: :effect_id
end
