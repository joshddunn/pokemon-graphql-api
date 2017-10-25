class Experience < ApplicationRecord
  belongs_to :growth_rate, foreign_key: :growth_rate_id
end
