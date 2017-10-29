class Pokedex < ApplicationRecord
  belongs_to :region, foreign_key: :region_id

  has_many :pokedex_proses, foreign_key: :pokedex_id
  has_many :pokedex_version_groups, foreign_key: :pokedex_id
end
