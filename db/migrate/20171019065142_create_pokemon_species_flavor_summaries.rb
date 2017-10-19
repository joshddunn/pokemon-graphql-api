class CreatePokemonSpeciesFlavorSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_species_flavor_summaries do |t|
      t.integer :pokemon_species_id
      t.integer :local_language_id
      t.string :flavor_summary

      t.timestamps
    end
  end
end
