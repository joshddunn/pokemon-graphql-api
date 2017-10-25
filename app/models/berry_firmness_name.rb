class BerryFirmnessName < ApplicationRecord
  belongs_to :berry_firmness, foreign_key: :berry_firmness_id
  belongs_to :language, foreign_key: :local_language_id
end
