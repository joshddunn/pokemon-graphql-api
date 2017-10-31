class CreateConquestMoveRangeProses < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_move_range_proses do |t|
      t.integer :conquest_move_range_id
      t.integer :local_language_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
