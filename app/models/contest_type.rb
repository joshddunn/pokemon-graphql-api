class ContestType < ApplicationRecord
  has_many :berry_flavors, foreign_key: :contest_type_id
end
