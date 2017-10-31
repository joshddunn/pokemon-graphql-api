class ConquestEpisode < ApplicationRecord
  has_many :conquest_episode_names, foreign_key: :episode_id
  has_many :conquest_episode_warriors, foreign_key: :episode_id
  has_many :completed_episodes, class_name: "ConquestWarriorTransformation", foreign_key: :completed_episode_id
  has_many :current_episodes, class_name: "ConquestWarriorTransformation", foreign_key: :current_episode_id
end
