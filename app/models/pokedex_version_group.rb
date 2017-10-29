class PokedexVersionGroup < ApplicationRecord
  belongs_to :pokedex, foreign_key: :pokedex_id
  belongs_to :version_group, foreign_key: :version_group_id
end
