class Language < ApplicationRecord
  has_many :ability_changelog_proses, foreign_key: :local_language_id
  has_many :ability_flavor_texts, foreign_key: :language_id
  has_many :ability_names, foreign_key: :local_language_id
  has_many :ability_prose, foreign_key: :local_language_id
  has_many :berry_firmness_names, foreign_key: :local_language_id
  has_many :characteristic_texts, foreign_key: :local_language_id
  has_many :contest_effect_proses, foreign_key: :local_language_id
  has_many :contest_type_names, foreign_key: :local_language_id
  has_many :egg_group_proses, foreign_key: :local_language_id
  has_many :encounter_condition_proses, foreign_key: :local_language_id
  has_many :encounter_condition_value_proses, foreign_key: :local_language_id
  has_many :encounter_method_proses, foreign_key: :local_language_id
  has_many :evolution_trigger_proses, foreign_key: :local_language_id
  has_many :generation_names, foreign_key: :local_language_id
  has_many :growth_rate_proses, foreign_key: :local_language_id
  has_many :item_category_proses, foreign_key: :local_language_id
  has_many :item_flag_proses, foreign_key: :local_language_id
  has_many :item_flavor_summaries, foreign_key: :local_language_id
  has_many :item_flavor_texts, foreign_key: :language_id
  has_many :item_fling_effect_proses, foreign_key: :local_language_id
  has_many :item_names, foreign_key: :local_language_id
  has_many :item_pocket_names, foreign_key: :local_language_id
  has_many :item_proses, foreign_key: :local_language_id
  has_many :language_names, foreign_key: :language_id
  has_many :local_language_names, class_name: "LanguageName", foreign_key: :local_language_id
end
