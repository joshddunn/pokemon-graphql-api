class NatureName < ApplicationRecord
  belongs_to :nature, foreign_key: :nature_id
  belongs_to :language, foreign_key: :local_language_id
end
