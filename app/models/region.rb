class Region < ApplicationRecord
  has_many :generations, foreign_key: :main_region_id
end
