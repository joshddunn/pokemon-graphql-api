class NaturePokeathlonStat < ApplicationRecord
  belongs_to :nature, foreign_key: :nature_id
  belongs_to :pokeathlon_stat, foreign_key: :pokeathlon_stat_id
end
