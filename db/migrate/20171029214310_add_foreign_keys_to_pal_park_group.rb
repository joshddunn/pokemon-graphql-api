class AddForeignKeysToPalParkGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :pal_parks, :pokemon_species, column: :species_id
    add_foreign_key :pal_parks, :pal_park_areas, column: :area_id

    add_foreign_key :pal_park_area_names, :pal_park_areas, column: :pal_park_area_id
    add_foreign_key :pal_park_area_names, :languages, column: :local_language_id
  end
end
