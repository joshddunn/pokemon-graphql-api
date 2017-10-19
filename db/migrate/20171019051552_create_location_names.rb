class CreateLocationNames < ActiveRecord::Migration[5.1]
  def change
    create_table :location_names do |t|
      t.integer :location_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
