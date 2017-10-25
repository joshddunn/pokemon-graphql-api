class AddForeignKeysToEncounterGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :encounter_condition_proses, :encounter_conditions, column: :encounter_condition_id
    add_foreign_key :encounter_condition_proses, :languages, column: :local_language_id

    add_foreign_key :encounter_condition_value_maps, :encounters, column: :encounter_id
    add_foreign_key :encounter_condition_value_maps, :encounter_condition_values, column: :encounter_condition_value_id

    add_foreign_key :encounter_condition_value_proses, :encounter_condition_values, column: :encounter_condition_value_id
    add_foreign_key :encounter_condition_value_proses, :languages, column: :local_language_id

    add_foreign_key :encounter_condition_values, :encounter_conditions, column: :encounter_condition_id

    add_foreign_key :encounter_method_proses, :encounter_methods, column: :encounter_method_id
    add_foreign_key :encounter_method_proses, :languages, column: :local_language_id

    add_foreign_key :encounter_slots, :version_groups, column: :version_group_id
    add_foreign_key :encounter_slots, :encounter_methods, column: :encounter_method_id

    add_foreign_key :encounters, :versions, column: :version_id
    add_foreign_key :encounters, :location_areas, column: :location_area_id
    add_foreign_key :encounters, :encounter_slots, column: :encounter_slot_id
    add_foreign_key :encounters, :pokemons, column: :pokemon_id
  end
end
