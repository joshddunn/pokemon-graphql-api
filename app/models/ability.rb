class Ability < ApplicationRecord
  belongs_to :generation, foreign_key: :generation_id

  has_many :ability_changelog, foreign_key: :ability_id
  has_many :ability_flavor_texts, foreign_key: :ability_id
  has_many :ability_names, foreign_key: :ability_id
  has_many :ability_prose, foreign_key: :ability_id
end
