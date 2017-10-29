class Stat < ApplicationRecord
  has_many :characteristics, foreign_key: :stat_id
  has_many :move_meta_stat_changes, foreign_key: :stat_id
end
