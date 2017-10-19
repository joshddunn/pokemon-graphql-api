require 'csv'

# 'file.csv' => Model
files = {
  'pokemon_species.csv' => PokemonSpecy,
  'pokemon.csv' => Pokemon,
  'pokemon_colors.csv' => PokemonColor,
  'abilities.csv' => Ability,
  'ability_changelog.csv' => AbilityChangelog,
  'ability_changelog_prose.csv' => AbilityChangelogProse,
  'ability_flavor_text.csv' => AbilityFlavorText,
  'ability_names.csv' => AbilityName,
  'ability_prose.csv' => AbilityProse,
  'berries.csv' => Berry,
  'berry_firmness.csv' => BerryFirmness,
  'berry_firmness_names.csv' => BerryFirmnessName,
  'berry_flavors.csv' => BerryFlavor,
  'characteristic_text.csv' => CharacteristicText,
  'characteristics.csv' => Characteristic,
  'contest_combos.csv' => ContestCombo,
  'contest_effect_prose.csv' => ContestEffectProse,
  'contest_effects.csv' => ContestEffect,
  'contest_type_names.csv' => ContestTypeName,
  'contest_types.csv' => ContestType,
  'egg_group_prose.csv' => EggGroupProse,
  'egg_groups.csv' => EggGroup,
  'encounter_condition_prose.csv' => EncounterConditionProse,
  'encounter_condition_value_map.csv' => EncounterConditionValueMap,
  'encounter_condition_value_prose.csv' => EncounterConditionValueProse,
  'encounter_condition_values.csv' => EncounterConditionValue,
  'encounter_conditions.csv' => EncounterCondition,
  'encounter_method_prose.csv' => EncounterMethodProse,
  'encounter_methods.csv' => EncounterMethod,
  'encounter_slots.csv' => EncounterSlot,
  'encounters.csv' => Encounter,
}

connection = ActiveRecord::Base.connection()
connection.execute("SET FOREIGN_KEY_CHECKS = 0;")

# add all data in each csv file to the database 
files.keys.each do |file|
  csv_text = File.read(Rails.root.join('lib', 'seeds', file))
  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

  csv.each do |row|
    t = files[file].new

    csv.headers.each do |header|
      t[header] = row[header]
    end

    t.save!
  end

  puts "#{file} added to the database. #{files[file].count} entries."
end

