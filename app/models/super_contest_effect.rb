class SuperContestEffect < ApplicationRecord
  has_many :moves, foreign_key: :super_contest_effect_id
end
