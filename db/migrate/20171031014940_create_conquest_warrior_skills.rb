class CreateConquestWarriorSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warrior_skills do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
