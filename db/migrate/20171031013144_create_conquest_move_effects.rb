class CreateConquestMoveEffects < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_move_effects do |t|

      t.timestamps
    end
  end
end
