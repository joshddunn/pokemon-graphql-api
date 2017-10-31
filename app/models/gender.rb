class Gender < ApplicationRecord
  has_many :pokemon_evolutions, foreign_key: :gender_id
  has_many :conquest_pokemon_evolutions, foreign_key: :warrior_gender_id
  has_many :conquest_warriors, foreign_key: :gender_id
end
