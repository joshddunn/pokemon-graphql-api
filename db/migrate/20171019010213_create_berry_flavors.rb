class CreateBerryFlavors < ActiveRecord::Migration[5.1]
  def change
    create_table :berry_flavors do |t|
      t.integer :berry_id
      t.integer :contest_type_id
      t.integer :flavor

      t.timestamps
    end
  end
end
