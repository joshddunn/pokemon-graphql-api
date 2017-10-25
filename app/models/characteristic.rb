class Characteristic < ApplicationRecord
  has_many :characteristic_texts, foreign_key: :characteristic_id

  belongs_to :stat, foreign_key: :stat_id
end
