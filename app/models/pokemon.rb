class Pokemon < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :species_id
end
