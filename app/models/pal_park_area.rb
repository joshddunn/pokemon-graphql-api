class PalParkArea < ApplicationRecord
  has_many :pal_parks, foreign_key: :area_id
  has_many :pal_park_area_names, foreign_key: :pal_park_area_id
end
