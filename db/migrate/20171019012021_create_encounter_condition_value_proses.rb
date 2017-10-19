class CreateEncounterConditionValueProses < ActiveRecord::Migration[5.1]
  def change
    create_table :encounter_condition_value_proses do |t|
      t.integer :encounter_condition_value_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
