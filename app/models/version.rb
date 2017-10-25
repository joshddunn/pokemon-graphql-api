class Version < ApplicationRecord
  has_many :encounters, foreign_key: :version_id
end
