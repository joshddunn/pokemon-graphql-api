class CreateMoveEffects < ActiveRecord::Migration[5.1]
  def change
    create_table :move_effects do |t|

      t.timestamps
    end
  end
end
