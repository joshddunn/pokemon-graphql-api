class CreatePokemonMoveMethodProses < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_move_method_proses do |t|
      t.integer :pokemon_move_method_id
      t.integer :local_language_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
