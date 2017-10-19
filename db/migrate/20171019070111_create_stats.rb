class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.integer :damage_class_id
      t.string :identifier
      t.boolean :is_battle_only
      t.integer :game_index

      t.timestamps
    end
  end
end
