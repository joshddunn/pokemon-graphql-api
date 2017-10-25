class ContestType < ApplicationRecord
  has_many :berry_flavors, foreign_key: :contest_type_id
  has_many :contest_type_names, foreign_key: :contest_type_id
end
