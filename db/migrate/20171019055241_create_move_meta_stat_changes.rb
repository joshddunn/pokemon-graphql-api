class CreateMoveMetaStatChanges < ActiveRecord::Migration[5.1]
  def change
    create_table :move_meta_stat_changes do |t|
      t.integer :move_id
      t.integer :stat_id
      t.integer :change

      t.timestamps
    end
  end
end
