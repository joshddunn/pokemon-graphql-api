class CreateConquestMoveRanges < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_move_ranges do |t|
      t.string :identifier
      t.integer :targets

      t.timestamps
    end
  end
end
