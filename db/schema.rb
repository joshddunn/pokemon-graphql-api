# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171019012527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "identifier"
    t.integer "generation_id"
    t.boolean "is_main_series"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ability_changelog_proses", force: :cascade do |t|
    t.integer "ability_changelog_id"
    t.integer "local_language_id"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ability_changelogs", force: :cascade do |t|
    t.integer "ability_id"
    t.integer "changed_in_version_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ability_flavor_texts", force: :cascade do |t|
    t.integer "ability_id"
    t.integer "version_group_id"
    t.integer "language_id"
    t.string "flavor_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ability_names", force: :cascade do |t|
    t.integer "ability_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ability_proses", force: :cascade do |t|
    t.integer "ability_id"
    t.integer "local_language_id"
    t.string "short_effect"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "berries", force: :cascade do |t|
    t.integer "item_id"
    t.integer "firmness_id"
    t.integer "natural_gift_power"
    t.integer "natural_gift_type_id"
    t.integer "size"
    t.integer "max_harvest"
    t.integer "growth_time"
    t.integer "soil_dryness"
    t.integer "smoothness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "berry_firmness_names", force: :cascade do |t|
    t.integer "berry_firmness_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "berry_firmnesses", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "berry_flavors", force: :cascade do |t|
    t.integer "berry_id"
    t.integer "contest_type_id"
    t.integer "flavor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characteristic_texts", force: :cascade do |t|
    t.integer "characteristic_id"
    t.integer "local_language_id"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characteristics", force: :cascade do |t|
    t.integer "stat_id"
    t.integer "gene_mod_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contest_combos", force: :cascade do |t|
    t.integer "first_move_id"
    t.integer "second_move_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contest_effect_proses", force: :cascade do |t|
    t.integer "contest_effect_id"
    t.integer "local_language_id"
    t.string "flavor_text"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contest_effects", force: :cascade do |t|
    t.integer "appeal"
    t.integer "jam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contest_type_names", force: :cascade do |t|
    t.integer "contest_type_id"
    t.integer "local_language_id"
    t.string "name"
    t.string "flavor"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contest_types", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egg_group_proses", force: :cascade do |t|
    t.integer "egg_group_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egg_groups", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_condition_proses", force: :cascade do |t|
    t.integer "encounter_condition_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_condition_value_maps", force: :cascade do |t|
    t.integer "encounter_id"
    t.integer "encounter_condition_value_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_condition_value_proses", force: :cascade do |t|
    t.integer "encounter_condition_value_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_condition_values", force: :cascade do |t|
    t.integer "encounter_condition_id"
    t.string "identifier"
    t.boolean "is_default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_conditions", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_method_proses", force: :cascade do |t|
    t.integer "encounter_method_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_methods", force: :cascade do |t|
    t.string "identifier"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounter_slots", force: :cascade do |t|
    t.integer "version_group_id"
    t.integer "encounter_method_id"
    t.integer "slot"
    t.integer "rarity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounters", force: :cascade do |t|
    t.integer "version_id"
    t.integer "location_area_id"
    t.integer "encounter_slot_id"
    t.integer "pokemon_id"
    t.integer "min_level"
    t.integer "max_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_colors", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_species", force: :cascade do |t|
    t.string "identifier"
    t.integer "generation_id"
    t.integer "evolves_from_species_id"
    t.integer "evolution_chain_id"
    t.integer "color_id"
    t.integer "shape_id"
    t.integer "habitat_id"
    t.integer "gender_rate"
    t.integer "capture_rate"
    t.integer "base_happiness"
    t.boolean "is_baby"
    t.integer "hatch_counter"
    t.boolean "has_gender_differences"
    t.integer "growth_rate_id"
    t.boolean "forms_switchable"
    t.integer "order"
    t.integer "conquest_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "identifier"
    t.bigint "species_id"
    t.integer "height"
    t.integer "weight"
    t.integer "base_experience"
    t.integer "order"
    t.boolean "is_default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["species_id"], name: "index_pokemons_on_species_id"
  end

  add_foreign_key "pokemon_species", "pokemon_colors", column: "color_id"
  add_foreign_key "pokemon_species", "pokemon_species", column: "evolves_from_species_id"
  add_foreign_key "pokemons", "pokemon_species", column: "species_id"
end
