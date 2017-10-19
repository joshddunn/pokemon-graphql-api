class AddForeignKeyToPokemonSpecies < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :pokemon_species, :pokemon_colors, column: :color_id
    add_foreign_key :pokemon_species, :pokemon_species, column: :evolves_from_species_id
  end
end
