class CreateConquestWarriorRanks < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warrior_ranks do |t|
      t.integer :warrior_id
      t.integer :rank
      t.integer :skill_id

      t.timestamps
    end
  end
end
