class CreatePokemonFormNames < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_form_names do |t|
      t.integer :pokemon_form_id
      t.integer :local_language_id
      t.string :form_name
      t.string :pokemon_name

      t.timestamps
    end
  end
end
