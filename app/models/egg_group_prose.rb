class EggGroupProse < ApplicationRecord
  belongs_to :egg_group, foreign_key: :egg_group_id
  belongs_to :language, foreign_key: :local_language_id
end
