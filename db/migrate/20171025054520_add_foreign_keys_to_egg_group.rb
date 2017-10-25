class AddForeignKeysToEggGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :egg_group_proses, :egg_groups, column: :egg_group_id
    add_foreign_key :egg_group_proses, :languages, column: :local_language_id
  end
end
