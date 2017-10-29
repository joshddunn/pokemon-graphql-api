class TypeGameIndex < ApplicationRecord
  belongs_to :type, foreign_key: :type_id
  belongs_to :generation, foreign_key: :generation_id
end
