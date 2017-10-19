class CreateSuperContestEffects < ActiveRecord::Migration[5.1]
  def change
    create_table :super_contest_effects do |t|
      t.integer :appeal

      t.timestamps
    end
  end
end
