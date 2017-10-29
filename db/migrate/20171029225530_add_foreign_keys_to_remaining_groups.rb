class AddForeignKeysToRemainingGroups < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :region_names, :regions, column: :region_id
    add_foreign_key :region_names, :languages, column: :local_language_id

    add_foreign_key :stat_names, :stats, column: :stat_id
    add_foreign_key :stat_names, :languages, column: :local_language_id

    add_foreign_key :stats, :move_damage_classes, column: :damage_class_id

    add_foreign_key :super_contest_combos, :moves, column: :first_move_id
    add_foreign_key :super_contest_combos, :moves, column: :second_move_id

    add_foreign_key :super_contest_effect_proses, :super_contest_effects, column: :super_contest_effect_id
    add_foreign_key :super_contest_effect_proses, :languages, column: :local_language_id

    add_foreign_key :type_efficacies, :types, column: :damage_type_id
    add_foreign_key :type_efficacies, :types, column: :target_type_id

    add_foreign_key :type_game_indices, :types, column: :type_id
    add_foreign_key :type_game_indices, :generations, column: :generation_id

    add_foreign_key :type_names, :types, column: :type_id
    add_foreign_key :type_names, :languages, column: :local_language_id

    add_foreign_key :types, :generations, column: :generation_id
    add_foreign_key :types, :move_damage_classes, column: :damage_class_id

    add_foreign_key :version_group_pokemon_move_methods, :version_groups, column: :version_group_id
    add_foreign_key :version_group_pokemon_move_methods, :pokemon_move_methods, column: :pokemon_move_method_id

    add_foreign_key :version_group_regions, :version_groups, column: :version_group_id
    add_foreign_key :version_group_regions, :regions, column: :region_id

    add_foreign_key :version_groups, :generations, column: :generation_id

    add_foreign_key :version_names, :versions, column: :version_id
    add_foreign_key :version_names, :languages, column: :local_language_id

    add_foreign_key :versions, :version_groups, column: :version_group_id
  end
end
