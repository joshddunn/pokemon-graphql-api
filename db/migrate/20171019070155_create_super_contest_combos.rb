class CreateSuperContestCombos < ActiveRecord::Migration[5.1]
  def change
    create_table :super_contest_combos do |t|
      t.integer :first_move_id
      t.integer :second_move_id

      t.timestamps
    end
  end
end
