class AddForeignKeysToMachines < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :machines, :version_groups, column: :version_group_id
    add_foreign_key :machines, :items, column: :item_id
    add_foreign_key :machines, :moves, column: :move_id
  end
end
