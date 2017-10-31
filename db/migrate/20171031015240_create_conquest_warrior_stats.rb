class CreateConquestWarriorStats < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warrior_stats do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
