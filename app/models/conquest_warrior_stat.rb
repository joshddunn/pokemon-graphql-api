class ConquestWarriorStat < ApplicationRecord
  has_many :conquest_warrior_rank_stat_maps, foreign_key: :warrior_stat_id
  has_many :conquest_warrior_stat_names, foreign_key: :warrior_stat_id
end
