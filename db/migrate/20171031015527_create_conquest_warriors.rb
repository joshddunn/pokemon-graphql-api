class CreateConquestWarriors < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warriors do |t|
      t.string :identifier
      t.integer :gender_id
      t.integer :archetype_id

      t.timestamps
    end
  end
end
