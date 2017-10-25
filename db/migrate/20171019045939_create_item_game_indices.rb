class CreateItemGameIndices < ActiveRecord::Migration[5.1]
  def change
    create_table :item_game_indices do |t|
      t.integer :item_id
      t.integer :generation_id
      t.integer :game_index

      t.timestamps
    end
  end
end
