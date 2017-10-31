class ConquestTransformationWarrior < ApplicationRecord
  belongs_to :conquest_warrior_rank, foreign_key: :transformation_id
  belongs_to :conquest_warrior, foreign_key: :present_warrior_id
end
