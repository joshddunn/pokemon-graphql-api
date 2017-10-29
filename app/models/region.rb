class Region < ApplicationRecord
  has_many :generations, foreign_key: :main_region_id
  has_many :locations, foreign_key: :region_id
  has_many :pokedexes, foreign_key: :region_id
end
