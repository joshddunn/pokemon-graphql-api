class BerryFlavor < ApplicationRecord
  belongs_to :berry, foreign_key: :berry_id
  belongs_to :contest_type, foreign_key: :contest_type_id
end
