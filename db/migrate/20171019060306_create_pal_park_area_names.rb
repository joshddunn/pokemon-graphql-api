class CreatePalParkAreaNames < ActiveRecord::Migration[5.1]
  def change
    create_table :pal_park_area_names do |t|
      t.integer :pal_park_area_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
