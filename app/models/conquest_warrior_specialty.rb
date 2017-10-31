class ConquestWarriorSpecialty < ApplicationRecord
  belongs_to :conquest_warrior, foreign_key: :warrior_id
  belongs_to :type, foreign_key: :type_id
end
