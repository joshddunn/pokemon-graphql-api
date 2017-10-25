class LanguageName < ApplicationRecord
  belongs_to :language, foreign_key: :language_id
  belongs_to :local_language, class_name: "Language", foreign_key: :local_language_id
end
