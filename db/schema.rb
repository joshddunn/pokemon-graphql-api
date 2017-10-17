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

ActiveRecord::Schema.define(version: 20171016014638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  add_foreign_key "pokemons", "pokemon_species", column: "species_id"
end
