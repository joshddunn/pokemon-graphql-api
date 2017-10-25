class AddForeignKeysToLocationGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :location_area_encounter_rates, :location_areas, column: :location_area_id
    add_foreign_key :location_area_encounter_rates, :encounter_methods, column: :encounter_method_id
    add_foreign_key :location_area_encounter_rates, :versions, column: :version_id

    add_foreign_key :location_area_proses, :location_areas, column: :location_area_id
    add_foreign_key :location_area_proses, :languages, column: :local_language_id

    add_foreign_key :location_areas, :locations, column: :location_id

    add_foreign_key :location_game_indices, :locations, column: :location_id
    add_foreign_key :location_game_indices, :generations, column: :generation_id

    add_foreign_key :location_names, :locations, column: :location_id
    add_foreign_key :location_names, :languages, column: :local_language_id

    add_foreign_key :locations, :regions, column: :region_id
  end
end
