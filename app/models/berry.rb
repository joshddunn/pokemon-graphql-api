class Berry < ApplicationRecord
  belongs_to :item, foreign_key: :item_id
  belongs_to :berry_firmness, foreign_key: :firmness_id
  belongs_to :type, foreign_key: :natural_gift_type_id

  has_many :berry_flavors, foreign_key: :berry_id
end
