class CreateGenerations < ActiveRecord::Migration[5.1]
  def change
    create_table :generations do |t|
      t.integer :main_region_id
      t.string :identifier

      t.timestamps
    end
  end
end
