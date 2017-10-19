class CreatePokemonTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_types do |t|
      t.integer :pokemon_id
      t.integer :type_id
      t.integer :slot

      t.timestamps
    end
  end
end
