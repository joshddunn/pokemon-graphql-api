class CreateEncounterMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :encounter_methods do |t|
      t.string :identifier
      t.integer :order

      t.timestamps
    end
  end
end
