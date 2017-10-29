class PalParkAreaName < ApplicationRecord
  belongs_to :pal_park_area, foreign_key: :pal_park_area_id
  belongs_to :language, foreign_key: :local_language_id
end
