class Item < ApplicationRecord
  belongs_to :item_category, foreign_key: :category_id
  belongs_to :item_fling_effect, foreign_key: :fling_effect_id

  has_many :berries, foreign_key: :item_id
  has_many :evolution_chains, foreign_key: :baby_trigger_item_id
  has_many :item_flag_maps, foreign_key: :item_id
  has_many :item_flavor_summaries, foreign_key: :item_id
  has_many :item_flavor_texts, foreign_key: :item_id
  has_many :item_game_indices, foreign_key: :item_id
  has_many :item_names, foreign_key: :item_id
  has_many :item_proses, foreign_key: :item_id
  has_many :machines, foreign_key: :item_id
end
