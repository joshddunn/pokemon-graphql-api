class RegionName < ApplicationRecord
  belongs_to :region, foreign_key: :region_id
  belongs_to :language, foreign_key: :local_language_id
end
