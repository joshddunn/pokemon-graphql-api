class Type < ApplicationRecord
  has_many :berries, foreign_key: :natural_gift_type_id
  has_many :move_changelogs, foreign_key: :type_id
  has_many :moves, foreign_key: :type_id
end
