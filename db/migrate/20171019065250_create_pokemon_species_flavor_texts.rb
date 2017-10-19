class CreatePokemonSpeciesFlavorTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_species_flavor_texts do |t|
      t.integer :species_id
      t.integer :version_id
      t.integer :language_id
      t.string :flavor_text

      t.timestamps
    end
  end
end
