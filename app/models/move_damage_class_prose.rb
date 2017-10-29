class MoveDamageClassProse < ApplicationRecord
  belongs_to :move_damage_class, foreign_key: :move_damage_class_id
  belongs_to :language, foreign_key: :local_language_id
end
