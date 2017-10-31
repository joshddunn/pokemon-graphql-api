class CreateConquestWarriorSkillNames < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warrior_skill_names do |t|
      t.integer :skill_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
