class CreatePokemonColorNames < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_color_names do |t|
      t.integer :pokemon_color_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
