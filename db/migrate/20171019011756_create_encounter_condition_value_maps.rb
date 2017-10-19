class CreateEncounterConditionValueMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :encounter_condition_value_maps do |t|
      t.integer :encounter_id
      t.integer :encounter_condition_value_id

      t.timestamps
    end
  end
end
