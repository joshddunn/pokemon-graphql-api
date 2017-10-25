class ItemFlagProse < ApplicationRecord
  belongs_to :item_flag, foreign_key: :item_flag_id
  belongs_to :language, foreign_key: :local_language_id
end
