class CreateContestEffects < ActiveRecord::Migration[5.1]
  def change
    create_table :contest_effects do |t|
      t.integer :appeal
      t.integer :jam

      t.timestamps
    end
  end
end
