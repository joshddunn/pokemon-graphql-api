class CreateConquestWarriorNames < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warrior_names do |t|
      t.integer :warrior_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
