class CreateMoveMetaAilments < ActiveRecord::Migration[5.1]
  def change
    create_table :move_meta_ailments do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
