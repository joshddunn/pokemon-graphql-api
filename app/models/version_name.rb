class VersionName < ApplicationRecord
  belongs_to :version, foreign_key: :version_id
  belongs_to :language, foreign_key: :local_language_id
end
