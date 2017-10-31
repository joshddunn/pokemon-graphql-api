class CreateConquestWarriorArchetypes < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warrior_archetypes do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
