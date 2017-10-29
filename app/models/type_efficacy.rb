class TypeEfficacy < ApplicationRecord
  belongs_to :damage_type, class_name: "Type", foreign_key: :damage_type_id
  belongs_to :target_type, class_name: "Type", foreign_key: :target_type_id
end
