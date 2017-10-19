class CreateLocationAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :location_areas do |t|
      t.integer :location_id
      t.integer :game_index
      t.string :identifier

      t.timestamps
    end
  end
end
