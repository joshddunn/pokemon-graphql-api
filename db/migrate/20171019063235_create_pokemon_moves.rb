class CreatePokemonMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_moves do |t|
      t.integer :pokemon_id
      t.integer :version_group_id
      t.integer :move_id
      t.integer :pokemon_move_method_id
      t.integer :level
      t.integer :order

      t.timestamps
    end
  end
end
