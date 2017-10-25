class GrowthRate < ApplicationRecord
  has_many :experiences, foreign_key: :growth_rate_id
  has_many :growth_rate_proses, foreign_key: :growth_rate_id
end
