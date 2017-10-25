class GenerationName < ApplicationRecord
  belongs_to :generation, foreign_key: :generation_id
  belongs_to :language, foreign_key: :local_language_id
end
