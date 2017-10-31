class CreateConquestPokemonAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_pokemon_abilities do |t|
      t.integer :pokemon_species_id
      t.integer :slot
      t.integer :ability_id

      t.timestamps
    end
  end
end
