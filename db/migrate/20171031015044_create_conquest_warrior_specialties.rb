class CreateConquestWarriorSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warrior_specialties do |t|
      t.integer :warrior_id
      t.integer :type_id
      t.integer :slot

      t.timestamps
    end
  end
end
