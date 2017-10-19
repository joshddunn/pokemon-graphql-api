class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :region_id
      t.string :identifier

      t.timestamps
    end
  end
end
