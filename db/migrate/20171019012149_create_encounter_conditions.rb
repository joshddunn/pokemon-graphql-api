class CreateEncounterConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :encounter_conditions do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
