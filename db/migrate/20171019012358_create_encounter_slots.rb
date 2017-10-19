class CreateEncounterSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :encounter_slots do |t|
      t.integer :version_group_id
      t.integer :encounter_method_id
      t.integer :slot
      t.integer :rarity

      t.timestamps
    end
  end
end
