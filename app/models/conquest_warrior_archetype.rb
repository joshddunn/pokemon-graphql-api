class ConquestWarriorArchetype < ApplicationRecord
  has_many :conquest_warriors, foreign_key: :archetype_id
end
