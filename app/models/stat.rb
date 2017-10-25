class Stat < ApplicationRecord
  has_many :characteristics, foreign_key: :stat_id
end
