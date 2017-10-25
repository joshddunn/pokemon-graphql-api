class Type < ApplicationRecord
  has_many :berries, foreign_key: :natural_gift_type_id
end
