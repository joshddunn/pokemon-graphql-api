class CreatePokemonDexNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_dex_numbers do |t|
      t.integer :species_id
      t.integer :pokedex_id
      t.integer :pokedex_number

      t.timestamps
    end
  end
end
