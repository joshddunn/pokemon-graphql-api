class BerryFlavor < ApplicationRecord
  belongs_to :berry, foreign_key: :berry_id
  belongs_to :contest_type, foreign_key: :contest_type_id

  has_many :likes_flavors, class_name: "Nature", foreign_key: :likes_flavor_id
  has_many :hates_flavors, class_name: "Nature", foreign_key: :hates_flavor_id
end
