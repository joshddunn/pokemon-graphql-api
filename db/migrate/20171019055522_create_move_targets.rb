class CreateMoveTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :move_targets do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
