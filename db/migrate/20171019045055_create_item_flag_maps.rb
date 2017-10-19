class CreateItemFlagMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :item_flag_maps do |t|
      t.integer :item_id
      t.integer :item_flag_id

      t.timestamps
    end
  end
end
