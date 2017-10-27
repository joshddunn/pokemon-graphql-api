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

ActiveRecord::Schema.define(version: 20171027050106) do

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

  create_table "evolution_chains", force: :cascade do |t|
    t.integer "baby_trigger_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evolution_trigger_proses", force: :cascade do |t|
    t.integer "evolution_trigger_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evolution_triggers", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.integer "growth_rate_id"
    t.integer "level"
    t.integer "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generation_names", force: :cascade do |t|
    t.integer "generation_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generations", force: :cascade do |t|
    t.integer "main_region_id"
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "growth_rate_proses", force: :cascade do |t|
    t.integer "growth_rate_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "growth_rates", force: :cascade do |t|
    t.string "identifier"
    t.string "formula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_categories", force: :cascade do |t|
    t.integer "pocket_id"
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_category_proses", force: :cascade do |t|
    t.integer "item_category_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_flag_maps", force: :cascade do |t|
    t.integer "item_id"
    t.integer "item_flag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_flag_proses", force: :cascade do |t|
    t.integer "item_flag_id"
    t.integer "local_language_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_flags", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_flavor_summaries", force: :cascade do |t|
    t.integer "item_id"
    t.integer "local_language_id"
    t.string "flavor_summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_flavor_texts", force: :cascade do |t|
    t.integer "item_id"
    t.integer "version_group_id"
    t.integer "language_id"
    t.string "flavor_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_fling_effect_proses", force: :cascade do |t|
    t.integer "item_fling_effect_id"
    t.integer "local_language_id"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_fling_effects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_game_indices", force: :cascade do |t|
    t.integer "item_id"
    t.integer "generation_id"
    t.integer "game_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_names", force: :cascade do |t|
    t.integer "item_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_pocket_names", force: :cascade do |t|
    t.integer "item_pocket_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_pockets", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_proses", force: :cascade do |t|
    t.integer "item_id"
    t.integer "local_language_id"
    t.string "short_effect"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "identifier"
    t.integer "category_id"
    t.integer "cost"
    t.integer "fling_power"
    t.integer "fling_effect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_names", force: :cascade do |t|
    t.integer "language_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "iso639"
    t.string "iso3166"
    t.string "identifier"
    t.boolean "official"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_area_encounter_rates", force: :cascade do |t|
    t.integer "location_area_id"
    t.integer "encounter_method_id"
    t.integer "version_id"
    t.integer "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_area_proses", force: :cascade do |t|
    t.integer "location_area_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_areas", force: :cascade do |t|
    t.integer "location_id"
    t.integer "game_index"
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_game_indices", force: :cascade do |t|
    t.integer "location_id"
    t.integer "generation_id"
    t.integer "game_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_names", force: :cascade do |t|
    t.integer "location_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "region_id"
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "machines", force: :cascade do |t|
    t.integer "machine_number"
    t.integer "version_group_id"
    t.integer "item_id"
    t.integer "move_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_battle_style_proses", force: :cascade do |t|
    t.integer "move_battle_style_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_battle_styles", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_changelogs", force: :cascade do |t|
    t.integer "move_id"
    t.integer "changed_in_version_group_id"
    t.integer "type_id"
    t.integer "power"
    t.integer "pp"
    t.integer "accuracy"
    t.integer "effect_id"
    t.integer "effect_chance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_damage_class_proses", force: :cascade do |t|
    t.integer "move_damage_class_id"
    t.integer "local_language_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_damage_classes", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_effect_changelog_proses", force: :cascade do |t|
    t.integer "move_effect_changelog_id"
    t.integer "local_language_id"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_effect_changelogs", force: :cascade do |t|
    t.integer "effect_id"
    t.integer "changed_in_version_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_effect_proses", force: :cascade do |t|
    t.integer "move_effect_id"
    t.integer "local_language_id"
    t.string "short_effect"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_effects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_flag_maps", force: :cascade do |t|
    t.integer "move_id"
    t.integer "move_flag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_flag_proses", force: :cascade do |t|
    t.integer "move_flag_id"
    t.integer "local_language_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_flags", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_flavor_summaries", force: :cascade do |t|
    t.integer "move_id"
    t.integer "local_language_id"
    t.string "flavor_summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_flavor_texts", force: :cascade do |t|
    t.integer "move_id"
    t.integer "version_group_id"
    t.integer "language_id"
    t.string "flavor_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_meta", force: :cascade do |t|
    t.integer "move_id"
    t.integer "meta_category_id"
    t.integer "meta_ailment_id"
    t.integer "min_hits"
    t.integer "max_hits"
    t.integer "min_turns"
    t.integer "max_turns"
    t.integer "drain"
    t.integer "healing"
    t.boolean "crit_rate"
    t.integer "ailment_chance"
    t.integer "flinch_chance"
    t.integer "stat_chance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_meta_ailment_names", force: :cascade do |t|
    t.integer "move_meta_ailment_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_meta_ailments", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_meta_categories", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_meta_category_proses", force: :cascade do |t|
    t.integer "move_meta_category_id"
    t.integer "local_language_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_meta_stat_changes", force: :cascade do |t|
    t.integer "move_id"
    t.integer "stat_id"
    t.integer "change"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_names", force: :cascade do |t|
    t.integer "move_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_target_proses", force: :cascade do |t|
    t.integer "move_target_id"
    t.integer "local_language_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_targets", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moves", force: :cascade do |t|
    t.string "identifier"
    t.integer "generation_id"
    t.integer "type_id"
    t.integer "power"
    t.integer "pp"
    t.integer "accuracy"
    t.integer "priority"
    t.integer "target_id"
    t.integer "damage_class_id"
    t.integer "effect_id"
    t.integer "effect_chance"
    t.integer "contest_type_id"
    t.integer "contest_effect_id"
    t.integer "super_contest_effect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nature_battle_style_preferences", force: :cascade do |t|
    t.integer "nature_id"
    t.integer "move_battle_style_id"
    t.integer "low_hp_preference"
    t.integer "high_hp_preference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nature_names", force: :cascade do |t|
    t.integer "nature_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nature_pokeathlon_stats", force: :cascade do |t|
    t.integer "nature_id"
    t.integer "pokeathlon_stat_id"
    t.integer "max_change"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "natures", force: :cascade do |t|
    t.string "identifier"
    t.integer "decreased_stat_id"
    t.integer "increased_stat_id"
    t.integer "hates_flavor_id"
    t.integer "likes_flavor_id"
    t.integer "game_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pal_park_area_names", force: :cascade do |t|
    t.integer "pal_park_area_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pal_park_areas", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pal_parks", force: :cascade do |t|
    t.integer "species_id"
    t.integer "area_id"
    t.integer "base_score"
    t.integer "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokeathlon_stat_names", force: :cascade do |t|
    t.integer "pokeathlon_stat_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokeathlon_stats", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokedex_proses", force: :cascade do |t|
    t.integer "pokedex_id"
    t.integer "local_language_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokedex_version_groups", force: :cascade do |t|
    t.integer "pokedex_id"
    t.integer "version_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokedexes", force: :cascade do |t|
    t.integer "region_id"
    t.string "identifier"
    t.boolean "is_main_series"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_abilities", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "ability_id"
    t.boolean "is_hidden"
    t.integer "slot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_color_names", force: :cascade do |t|
    t.integer "pokemon_color_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_colors", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_dex_numbers", force: :cascade do |t|
    t.integer "species_id"
    t.integer "pokedex_id"
    t.integer "pokedex_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_egg_groups", force: :cascade do |t|
    t.integer "species_id"
    t.integer "egg_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_evolutions", force: :cascade do |t|
    t.integer "evolved_species_id"
    t.integer "evolution_trigger_id"
    t.integer "trigger_item_id"
    t.integer "minimum_level"
    t.integer "gender_id"
    t.integer "location_id"
    t.integer "held_item_id"
    t.string "time_of_day"
    t.integer "known_move_id"
    t.integer "known_move_type_id"
    t.integer "minimum_happiness"
    t.integer "minimum_beauty"
    t.integer "minimum_affection"
    t.integer "relative_physical_stats"
    t.integer "party_species_id"
    t.integer "party_type_id"
    t.integer "trade_species_id"
    t.boolean "needs_overworld_rain"
    t.boolean "turn_upside_down"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_form_generations", force: :cascade do |t|
    t.integer "pokemon_form_id"
    t.integer "generation_id"
    t.integer "game_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_form_names", force: :cascade do |t|
    t.integer "pokemon_form_id"
    t.integer "local_language_id"
    t.string "form_name"
    t.string "pokemon_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_form_pokeathlon_stats", force: :cascade do |t|
    t.integer "pokemon_form_id"
    t.integer "pokeathlon_stat_id"
    t.integer "minimum_stat"
    t.integer "base_stat"
    t.integer "maximum_stat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_forms", force: :cascade do |t|
    t.string "identifier"
    t.string "form_identifier"
    t.integer "pokemon_id"
    t.integer "introduced_in_version_group_id"
    t.boolean "is_default"
    t.boolean "is_battle_only"
    t.boolean "is_mega"
    t.integer "form_order"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_game_indices", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "version_id"
    t.integer "game_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_habitat_names", force: :cascade do |t|
    t.integer "pokemon_habitat_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_habitats", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_items", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "version_id"
    t.integer "item_id"
    t.integer "rarity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_move_method_proses", force: :cascade do |t|
    t.integer "pokemon_move_method_id"
    t.integer "local_language_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_move_methods", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_moves", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "version_group_id"
    t.integer "move_id"
    t.integer "pokemon_move_method_id"
    t.integer "level"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_shape_proses", force: :cascade do |t|
    t.integer "pokemon_shape_id"
    t.integer "local_language_id"
    t.string "name"
    t.string "awesome_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_shapes", force: :cascade do |t|
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

  create_table "pokemon_species_flavor_summaries", force: :cascade do |t|
    t.integer "pokemon_species_id"
    t.integer "local_language_id"
    t.string "flavor_summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_species_flavor_texts", force: :cascade do |t|
    t.integer "species_id"
    t.integer "version_id"
    t.integer "language_id"
    t.string "flavor_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_species_names", force: :cascade do |t|
    t.integer "pokemon_species_id"
    t.integer "local_language_id"
    t.string "name"
    t.string "genus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_species_proses", force: :cascade do |t|
    t.integer "pokemon_species_id"
    t.integer "local_language_id"
    t.text "form_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_stats", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "stat_id"
    t.integer "base_stat"
    t.integer "effort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "type_id"
    t.integer "slot"
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

  create_table "region_names", force: :cascade do |t|
    t.integer "region_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stat_names", force: :cascade do |t|
    t.integer "stat_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "damage_class_id"
    t.string "identifier"
    t.boolean "is_battle_only"
    t.integer "game_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "super_contest_combos", force: :cascade do |t|
    t.integer "first_move_id"
    t.integer "second_move_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "super_contest_effect_proses", force: :cascade do |t|
    t.integer "super_contest_effect_id"
    t.integer "local_language_id"
    t.string "flavor_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "super_contest_effects", force: :cascade do |t|
    t.integer "appeal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_efficacies", force: :cascade do |t|
    t.integer "damage_type_id"
    t.integer "target_type_id"
    t.integer "damage_factor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_game_indices", force: :cascade do |t|
    t.integer "type_id"
    t.integer "generation_id"
    t.integer "game_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_names", force: :cascade do |t|
    t.integer "type_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "identifier"
    t.integer "generation_id"
    t.integer "damage_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "version_group_pokemon_move_methods", force: :cascade do |t|
    t.integer "version_group_id"
    t.integer "pokemon_move_method_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "version_group_regions", force: :cascade do |t|
    t.integer "version_group_id"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "version_groups", force: :cascade do |t|
    t.string "identifier"
    t.integer "generation_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "version_names", force: :cascade do |t|
    t.integer "version_id"
    t.integer "local_language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "versions", force: :cascade do |t|
    t.integer "version_group_id"
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "abilities", "generations"
  add_foreign_key "ability_changelog_proses", "ability_changelogs"
  add_foreign_key "ability_changelog_proses", "languages", column: "local_language_id"
  add_foreign_key "ability_changelogs", "abilities"
  add_foreign_key "ability_changelogs", "version_groups", column: "changed_in_version_group_id"
  add_foreign_key "ability_flavor_texts", "abilities"
  add_foreign_key "ability_flavor_texts", "languages"
  add_foreign_key "ability_flavor_texts", "version_groups"
  add_foreign_key "ability_names", "abilities"
  add_foreign_key "ability_names", "languages", column: "local_language_id"
  add_foreign_key "ability_proses", "abilities"
  add_foreign_key "ability_proses", "languages", column: "local_language_id"
  add_foreign_key "berries", "berry_firmnesses", column: "firmness_id"
  add_foreign_key "berries", "items"
  add_foreign_key "berries", "types", column: "natural_gift_type_id"
  add_foreign_key "berry_firmness_names", "berry_firmnesses"
  add_foreign_key "berry_firmness_names", "languages", column: "local_language_id"
  add_foreign_key "berry_flavors", "berries"
  add_foreign_key "berry_flavors", "contest_types"
  add_foreign_key "characteristic_texts", "characteristics"
  add_foreign_key "characteristic_texts", "languages", column: "local_language_id"
  add_foreign_key "characteristics", "stats"
  add_foreign_key "contest_combos", "moves", column: "first_move_id"
  add_foreign_key "contest_combos", "moves", column: "second_move_id"
  add_foreign_key "contest_effect_proses", "contest_effects"
  add_foreign_key "contest_effect_proses", "languages", column: "local_language_id"
  add_foreign_key "contest_type_names", "contest_types"
  add_foreign_key "contest_type_names", "languages", column: "local_language_id"
  add_foreign_key "egg_group_proses", "egg_groups"
  add_foreign_key "egg_group_proses", "languages", column: "local_language_id"
  add_foreign_key "encounter_condition_proses", "encounter_conditions"
  add_foreign_key "encounter_condition_proses", "languages", column: "local_language_id"
  add_foreign_key "encounter_condition_value_maps", "encounter_condition_values"
  add_foreign_key "encounter_condition_value_maps", "encounters"
  add_foreign_key "encounter_condition_value_proses", "encounter_condition_values"
  add_foreign_key "encounter_condition_value_proses", "languages", column: "local_language_id"
  add_foreign_key "encounter_condition_values", "encounter_conditions"
  add_foreign_key "encounter_method_proses", "encounter_methods"
  add_foreign_key "encounter_method_proses", "languages", column: "local_language_id"
  add_foreign_key "encounter_slots", "encounter_methods"
  add_foreign_key "encounter_slots", "version_groups"
  add_foreign_key "encounters", "encounter_slots"
  add_foreign_key "encounters", "location_areas"
  add_foreign_key "encounters", "pokemons"
  add_foreign_key "encounters", "versions"
  add_foreign_key "evolution_chains", "items", column: "baby_trigger_item_id"
  add_foreign_key "evolution_trigger_proses", "evolution_triggers"
  add_foreign_key "evolution_trigger_proses", "languages", column: "local_language_id"
  add_foreign_key "experiences", "growth_rates"
  add_foreign_key "generation_names", "generations"
  add_foreign_key "generation_names", "languages", column: "local_language_id"
  add_foreign_key "generations", "regions", column: "main_region_id"
  add_foreign_key "growth_rate_proses", "growth_rates"
  add_foreign_key "growth_rate_proses", "languages", column: "local_language_id"
  add_foreign_key "item_categories", "item_pockets", column: "pocket_id"
  add_foreign_key "item_category_proses", "item_categories"
  add_foreign_key "item_category_proses", "languages", column: "local_language_id"
  add_foreign_key "item_flag_maps", "item_flags"
  add_foreign_key "item_flag_maps", "items"
  add_foreign_key "item_flag_proses", "item_flags"
  add_foreign_key "item_flag_proses", "languages", column: "local_language_id"
  add_foreign_key "item_flavor_summaries", "items"
  add_foreign_key "item_flavor_summaries", "languages", column: "local_language_id"
  add_foreign_key "item_flavor_texts", "items"
  add_foreign_key "item_flavor_texts", "languages"
  add_foreign_key "item_flavor_texts", "version_groups"
  add_foreign_key "item_fling_effect_proses", "item_fling_effects"
  add_foreign_key "item_fling_effect_proses", "languages", column: "local_language_id"
  add_foreign_key "item_game_indices", "generations"
  add_foreign_key "item_game_indices", "items"
  add_foreign_key "item_names", "items"
  add_foreign_key "item_names", "languages", column: "local_language_id"
  add_foreign_key "item_pocket_names", "item_pockets"
  add_foreign_key "item_pocket_names", "languages", column: "local_language_id"
  add_foreign_key "item_proses", "items"
  add_foreign_key "item_proses", "languages", column: "local_language_id"
  add_foreign_key "items", "item_categories", column: "category_id"
  add_foreign_key "items", "item_fling_effects", column: "fling_effect_id"
  add_foreign_key "language_names", "languages"
  add_foreign_key "language_names", "languages", column: "local_language_id"
  add_foreign_key "location_area_encounter_rates", "encounter_methods"
  add_foreign_key "location_area_encounter_rates", "location_areas"
  add_foreign_key "location_area_encounter_rates", "versions"
  add_foreign_key "location_area_proses", "languages", column: "local_language_id"
  add_foreign_key "location_area_proses", "location_areas"
  add_foreign_key "location_areas", "locations"
  add_foreign_key "location_game_indices", "generations"
  add_foreign_key "location_game_indices", "locations"
  add_foreign_key "location_names", "languages", column: "local_language_id"
  add_foreign_key "location_names", "locations"
  add_foreign_key "locations", "regions"
  add_foreign_key "machines", "items"
  add_foreign_key "machines", "moves"
  add_foreign_key "machines", "version_groups"
  add_foreign_key "pokemon_species", "pokemon_colors", column: "color_id"
  add_foreign_key "pokemon_species", "pokemon_species", column: "evolves_from_species_id"
  add_foreign_key "pokemons", "pokemon_species", column: "species_id"
end
