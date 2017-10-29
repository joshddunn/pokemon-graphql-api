class AddForeignKeysToNatureGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :nature_battle_style_preferences, :natures, column: :nature_id
    add_foreign_key :nature_battle_style_preferences, :move_battle_styles, column: :move_battle_style_id

    add_foreign_key :nature_names, :natures, column: :nature_id
    add_foreign_key :nature_names, :languages, column: :local_language_id

    add_foreign_key :nature_pokeathlon_stats, :natures, column: :nature_id
    add_foreign_key :nature_pokeathlon_stats, :pokeathlon_stats, column: :pokeathlon_stat_id

    add_foreign_key :natures, :stats, column: :decreased_stat_id
    add_foreign_key :natures, :stats, column: :increased_stat_id
    add_foreign_key :natures, :berry_flavors, column: :hates_flavor_id
    add_foreign_key :natures, :berry_flavors, column: :likes_flavor_id
  end
end
