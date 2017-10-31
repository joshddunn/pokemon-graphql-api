class ConquestWarriorRankStatMap < ApplicationRecord
  belongs_to :conquest_warrior_rank, foreign_key: :warrior_rank_id
  belongs_to :conquest_warrior_stat, foreign_key: :warrior_stat_id
end
