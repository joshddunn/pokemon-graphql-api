class CreateMoveNames < ActiveRecord::Migration[5.1]
  def change
    create_table :move_names do |t|
      t.integer :move_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
