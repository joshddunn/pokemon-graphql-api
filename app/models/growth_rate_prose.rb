class GrowthRateProse < ApplicationRecord
  belongs_to :growth_rate, foreign_key: :growth_rate_id
  belongs_to :language, foreign_key: :local_language_id
end
