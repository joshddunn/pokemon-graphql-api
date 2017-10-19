class CreatePokemonSpeciesProses < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_species_proses do |t|
      t.integer :pokemon_species_id
      t.integer :local_language_id
      t.text :form_description

      t.timestamps
    end
  end
end
