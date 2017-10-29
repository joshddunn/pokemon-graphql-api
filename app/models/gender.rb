class Gender < ApplicationRecord
  has_many :pokemon_evolutions, foreign_key: :gender_id
end
