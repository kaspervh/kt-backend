# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_08_192224) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armouries", force: :cascade do |t|
    t.integer "unit_id"
    t.string "name"
    t.string "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_rules", force: :cascade do |t|
    t.integer "unit_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.integer "weapon_skill"
    t.integer "balistics_skill"
    t.integer "strength"
    t.integer "toughness"
    t.integer "wounds"
    t.integer "initiative"
    t.integer "attacks"
    t.integer "leadership"
    t.integer "armor_save"
    t.string "unit_type"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "options"
    t.integer "faction_id"
  end

  create_table "weapon_options", force: :cascade do |t|
    t.integer "unit_id"
    t.string "name"
    t.integer "range"
    t.integer "strength"
    t.integer "armor_penetration"
    t.string "weapon_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
  end

end
