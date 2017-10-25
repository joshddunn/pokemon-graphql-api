class ItemFlingEffectProse < ApplicationRecord
  belongs_to :item_fling_effect, foreign_key: :item_fling_effect_id
  belongs_to :language, foreign_key: :local_language_id
end
