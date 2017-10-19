class CreateLocationAreaProses < ActiveRecord::Migration[5.1]
  def change
    create_table :location_area_proses do |t|
      t.integer :location_area_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
