class AddForeignKeysToMoveGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :move_battle_style_proses, :move_battle_styles, column: :move_battle_style_id
    add_foreign_key :move_battle_style_proses, :languages, column: :local_language_id

    add_foreign_key :move_changelogs, :moves, column: :move_id
    add_foreign_key :move_changelogs, :version_groups, column: :changed_in_version_group_id
    add_foreign_key :move_changelogs, :types, column: :type_id
    add_foreign_key :move_changelogs, :move_effects, column: :effect_id

    add_foreign_key :move_damage_class_proses, :move_damage_classes, column: :move_damage_class_id
    add_foreign_key :move_damage_class_proses, :languages, column: :local_language_id

    add_foreign_key :move_effect_changelogs, :move_effects, column: :effect_id
    add_foreign_key :move_effect_changelogs, :version_groups, column: :changed_in_version_group_id

    add_foreign_key :move_effect_changelog_proses, :move_effect_changelogs, column: :move_effect_changelog_id
    add_foreign_key :move_effect_changelog_proses, :languages, column: :local_language_id

    add_foreign_key :move_effect_proses, :move_effects, column: :move_effect_id
    add_foreign_key :move_effect_proses, :languages, column: :local_language_id

    add_foreign_key :move_flag_maps, :moves, column: :move_id
    add_foreign_key :move_flag_maps, :move_flags, column: :move_flag_id

    add_foreign_key :move_flag_proses, :move_flags, column: :move_flag_id
    add_foreign_key :move_flag_proses, :languages, column: :local_language_id

    add_foreign_key :move_flavor_summaries, :moves, column: :move_id
    add_foreign_key :move_flavor_summaries, :languages, column: :local_language_id

    add_foreign_key :move_flavor_texts, :moves, column: :move_id
    add_foreign_key :move_flavor_texts, :version_groups, column: :version_group_id
    add_foreign_key :move_flavor_texts, :languages, column: :language_id

    add_foreign_key :move_meta, :moves, column: :move_id
    add_foreign_key :move_meta, :move_meta_categories, column: :meta_category_id
    add_foreign_key :move_meta, :move_meta_ailments, column: :meta_ailment_id

    add_foreign_key :move_meta_ailment_names, :move_meta_ailments, column: :move_meta_ailment_id
    add_foreign_key :move_meta_ailment_names, :languages, column: :local_language_id

    add_foreign_key :move_meta_category_proses, :move_meta_categories, column: :move_meta_category_id
    add_foreign_key :move_meta_category_proses, :languages, column: :local_language_id

    add_foreign_key :move_meta_stat_changes, :moves, column: :move_id
    add_foreign_key :move_meta_stat_changes, :stats, column: :stat_id

    add_foreign_key :move_names, :moves, column: :move_id
    add_foreign_key :move_names, :languages, column: :local_language_id

    add_foreign_key :move_target_proses, :move_targets, column: :move_target_id
    add_foreign_key :move_target_proses, :languages, column: :local_language_id

    add_foreign_key :moves, :generations, column: :generation_id
    add_foreign_key :moves, :types, column: :type_id
    add_foreign_key :moves, :move_targets, column: :target_id
    add_foreign_key :moves, :move_damage_classes, column: :damage_class_id
    add_foreign_key :moves, :move_effects, column: :effect_id
    add_foreign_key :moves, :contest_types, column: :contest_type_id
    add_foreign_key :moves, :contest_effects, column: :contest_effect_id
    add_foreign_key :moves, :super_contest_effects, column: :super_contest_effect_id
  end
end
