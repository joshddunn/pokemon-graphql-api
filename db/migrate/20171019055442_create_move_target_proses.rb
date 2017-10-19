class CreateMoveTargetProses < ActiveRecord::Migration[5.1]
  def change
    create_table :move_target_proses do |t|
      t.integer :move_target_id
      t.integer :local_language_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
