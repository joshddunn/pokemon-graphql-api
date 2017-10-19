class CreateEncounters < ActiveRecord::Migration[5.1]
  def change
    create_table :encounters do |t|
      t.integer :version_id
      t.integer :location_area_id
      t.integer :encounter_slot_id
      t.integer :pokemon_id
      t.integer :min_level
      t.integer :max_level

      t.timestamps
    end
  end
end
