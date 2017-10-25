class BerryFirmness < ApplicationRecord
  has_many :berries, foreign_key: :firmness_id
  has_many :berry_firmness_names, foreign_key: :berry_firmness_id
end
