class PalPark < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :species_id
  belongs_to :pal_park_area, foreign_key: :area_id
end
