class CreateMoveFlagMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :move_flag_maps do |t|
      t.integer :move_id
      t.integer :move_flag_id

      t.timestamps
    end
  end
end
