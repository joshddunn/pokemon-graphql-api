class CreateEncounterConditionValues < ActiveRecord::Migration[5.1]
  def change
    create_table :encounter_condition_values do |t|
      t.integer :encounter_condition_id
      t.string :identifier
      t.boolean :is_default

      t.timestamps
    end
  end
end
