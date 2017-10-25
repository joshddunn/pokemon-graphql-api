class Pokemon < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :species_id

  has_many :encounters, foreign_key: :pokemon_id
end
