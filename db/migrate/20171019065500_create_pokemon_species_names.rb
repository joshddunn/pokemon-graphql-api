class CreatePokemonSpeciesNames < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_species_names do |t|
      t.integer :pokemon_species_id
      t.integer :local_language_id
      t.string :name
      t.string :genus

      t.timestamps
    end
  end
end
