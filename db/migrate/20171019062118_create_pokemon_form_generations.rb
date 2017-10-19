class CreatePokemonFormGenerations < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_form_generations do |t|
      t.integer :pokemon_form_id
      t.integer :generation_id
      t.integer :game_index

      t.timestamps
    end
  end
end
