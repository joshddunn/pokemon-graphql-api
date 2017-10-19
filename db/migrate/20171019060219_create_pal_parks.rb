class CreatePalParks < ActiveRecord::Migration[5.1]
  def change
    create_table :pal_parks do |t|
      t.integer :species_id
      t.integer :area_id
      t.integer :base_score
      t.integer :rate

      t.timestamps
    end
  end
end
