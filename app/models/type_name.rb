class TypeName < ApplicationRecord
  belongs_to :type, foreign_key: :type_id
  belongs_to :language, foreign_key: :local_language_id
end
