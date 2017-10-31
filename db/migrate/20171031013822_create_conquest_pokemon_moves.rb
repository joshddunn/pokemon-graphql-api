class CreateConquestPokemonMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_pokemon_moves do |t|
      t.integer :pokemon_species_id
      t.integer :move_id

      t.timestamps
    end
  end
end
