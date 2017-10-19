class CreatePalParkAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :pal_park_areas do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
