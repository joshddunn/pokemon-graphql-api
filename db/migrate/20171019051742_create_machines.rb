class CreateMachines < ActiveRecord::Migration[5.1]
  def change
    create_table :machines do |t|
      t.integer :machine_number
      t.integer :version_group_id
      t.integer :item_id
      t.integer :move_id

      t.timestamps
    end
  end
end
