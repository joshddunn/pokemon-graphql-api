class ConquestKingdom < ApplicationRecord
  belongs_to :type, foreign_key: :type_id

  has_many :conquest_kingdom_names, foreign_key: :kingdom_id
  has_many :conquest_pokemon_evolutions, foreign_key: :kingdom_id
end
