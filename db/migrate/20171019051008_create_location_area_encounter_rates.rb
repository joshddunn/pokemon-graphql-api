class CreateLocationAreaEncounterRates < ActiveRecord::Migration[5.1]
  def change
    create_table :location_area_encounter_rates do |t|
      t.integer :location_area_id
      t.integer :encounter_method_id
      t.integer :version_id
      t.integer :rate

      t.timestamps
    end
  end
end
