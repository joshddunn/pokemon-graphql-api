class CreateConquestMoveDisplacements < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_move_displacements do |t|
      t.string :identifier
      t.boolean :affects_target

      t.timestamps
    end
  end
end
