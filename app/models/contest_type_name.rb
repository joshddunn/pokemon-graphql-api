class ContestTypeName < ApplicationRecord
  belongs_to :contest_type, foreign_key: :contest_type_id
  belongs_to :language, foreign_key: :local_language_id
end
