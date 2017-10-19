class CreateMoveFlags < ActiveRecord::Migration[5.1]
  def change
    create_table :move_flags do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
