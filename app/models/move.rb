class Move < ApplicationRecord
  belongs_to :generation, foreign_key: :generation_id
  belongs_to :type, foreign_key: :type_id
  belongs_to :move_target, foreign_key: :target_id
  belongs_to :move_damage_class, foreign_key: :damage_class_id
  belongs_to :move_effect, foreign_key: :effect_id
  belongs_to :contest_typ, foreign_key: :contest_type_id
  belongs_to :contest_effect, foreign_key: :contest_effect_id
  belongs_to :super_contest_effect, foreign_key: :super_contest_effect_id

  has_many :contest_combo_first_moves, class_name: "ContestCombo", foreign_key: :first_move_id
  has_many :contest_combo_second_moves, class_name: "ContestCombo", foreign_key: :second_move_id
  has_many :machines, foreign_key: :move_id 
  has_many :move_changelogs, foreign_key: :move_id 
  has_many :move_flag_maps, foreign_key: :move_id 
  has_many :move_flavor_summaries, foreign_key: :move_id 
  has_many :move_flavor_texts, foreign_key: :move_id 
  has_many :move_meta, foreign_key: :move_id 
  has_many :move_meta_stat_changes, foreign_key: :move_id 
  has_many :move_names, foreign_key: :move_id 
  has_many :pokemon_evolutions, foreign_key: :known_move_id 
  has_many :pokemon_moves, foreign_key: :move_id 
end
