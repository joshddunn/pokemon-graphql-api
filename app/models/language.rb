class Language < ApplicationRecord
  has_many :ability_changelog_proses, foreign_key: :local_language_id
  has_many :ability_flavor_texts, foreign_key: :language_id
  has_many :ability_names, foreign_key: :local_language_id
  has_many :ability_prose, foreign_key: :local_language_id
  has_many :berry_firmness_names, foreign_key: :local_language_id
end
