class ConquestEpisodeWarrior < ApplicationRecord
  belongs_to :conquest_episode, foreign_key: :episode_id
  belongs_to :conquest_warrior, foreign_key: :warrior_id
end
