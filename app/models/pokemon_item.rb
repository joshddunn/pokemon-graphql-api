class PokemonItem < ApplicationRecord
  belongs_to :pokemon, foreign_key: :pokemon_id
  belongs_to :version, foreign_key: :version_id
  belongs_to :item, foreign_key: :item_id
end
