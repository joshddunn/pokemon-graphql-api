class CharacteristicText < ApplicationRecord
  belongs_to :language, foreign_key: :local_language_id
  belongs_to :characteristic, foreign_key: :characteristic_id
end
