class CreatePokemonAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_abilities do |t|
      t.integer :pokemon_id
      t.integer :ability_id
      t.boolean :is_hidden
      t.integer :slot

      t.timestamps
    end
  end
end
