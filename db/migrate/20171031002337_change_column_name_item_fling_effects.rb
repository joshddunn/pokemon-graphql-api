class ChangeColumnNameItemFlingEffects < ActiveRecord::Migration[5.1]
  def change
    rename_column :item_fling_effects, :name, :identifier
    add_column :move_changelogs, :priority, :integer
    add_column :move_changelogs, :target_id, :integer
    add_foreign_key :move_changelogs, :move_targets, column: :target_id
  end
end
