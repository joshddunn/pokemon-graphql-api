class Region < ApplicationRecord
  has_many :generations, foreign_key: :main_region_id
  has_many :locations, foreign_key: :region_id
  has_many :pokedexes, foreign_key: :region_id
  has_many :region_names, foreign_key: :region_id
  has_many :version_group_regions, foreign_key: :region_id
end
