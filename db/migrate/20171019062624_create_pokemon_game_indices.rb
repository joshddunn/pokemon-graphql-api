class CreatePokemonGameIndices < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_game_indices do |t|
      t.integer :pokemon_id
      t.integer :version_id
      t.integer :game_index

      t.timestamps
    end
  end
end
