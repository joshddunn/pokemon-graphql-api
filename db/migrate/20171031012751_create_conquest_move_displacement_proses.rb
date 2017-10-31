class CreateConquestMoveDisplacementProses < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_move_displacement_proses do |t|
      t.integer :move_displacement_id
      t.integer :local_language_id
      t.string :name
      t.string :short_effect
      t.string :effect

      t.timestamps
    end
  end
end
