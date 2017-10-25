class AddForeignKeysToItemGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :item_categories, :item_pockets, column: :pocket_id

    add_foreign_key :item_category_proses, :item_categories, column: :item_category_id
    add_foreign_key :item_category_proses, :languages, column: :local_language_id

    add_foreign_key :item_flag_maps, :items, column: :item_id
    add_foreign_key :item_flag_maps, :item_flags, column: :item_flag_id

    add_foreign_key :item_flag_proses, :item_flags, column: :item_flag_id
    add_foreign_key :item_flag_proses, :languages, column: :local_language_id

    add_foreign_key :item_flavor_summaries, :items, column: :item_id
    add_foreign_key :item_flavor_summaries, :languages, column: :local_language_id

    add_foreign_key :item_flavor_texts, :items, column: :item_id
    add_foreign_key :item_flavor_texts, :version_groups, column: :version_group_id
    add_foreign_key :item_flavor_texts, :languages, column: :language_id

    add_foreign_key :item_fling_effect_proses, :item_fling_effects, column: :item_fling_effect_id
    add_foreign_key :item_fling_effect_proses, :languages, column: :local_language_id

    add_foreign_key :item_game_indices, :items, column: :item_id
    add_foreign_key :item_game_indices, :generations, column: :generation_id

    add_foreign_key :item_names, :items, column: :item_id
    add_foreign_key :item_names, :languages, column: :local_language_id

    add_foreign_key :item_pocket_names, :item_pockets, column: :item_pocket_id
    add_foreign_key :item_pocket_names, :languages, column: :local_language_id

    add_foreign_key :item_proses, :items, column: :item_id
    add_foreign_key :item_proses, :languages, column: :local_language_id

    add_foreign_key :items, :item_categories, column: :category_id
    add_foreign_key :items, :item_fling_effects, column: :fling_effect_id
  end
end
