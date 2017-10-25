class Generation < ApplicationRecord
  has_many :abilities, foreign_key: :generation_id
end
