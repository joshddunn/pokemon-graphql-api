class ConquestWarriorTransformation < ApplicationRecord
  belongs_to :conquest_warrior_rank, foreign_key: :transformed_warrior_rank_id
  belongs_to :completed_episode, class_name: "ConquestEpisode", foreign_key: :completed_episode_id
  belongs_to :current_episode, class_name: "ConquestEpisode", foreign_key: :current_episode_id
  belongs_to :conquest_warrior, foreign_key: :distant_warrior_id
  belongs_to :type, foreign_key: :collection_type_id
end
