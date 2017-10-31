class ConquestEpisodeName < ApplicationRecord
  belongs_to :conquest_episode, foreign_key: :episode_id
  belongs_to :language, foreign_key: :local_language_id
end
