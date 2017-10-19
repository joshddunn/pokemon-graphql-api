class CreateBerries < ActiveRecord::Migration[5.1]
  def change
    create_table :berries do |t|
      t.integer :item_id
      t.integer :firmness_id
      t.integer :natural_gift_power
      t.integer :natural_gift_type_id
      t.integer :size
      t.integer :max_harvest
      t.integer :growth_time
      t.integer :soil_dryness
      t.integer :smoothness

      t.timestamps
    end
  end
end
