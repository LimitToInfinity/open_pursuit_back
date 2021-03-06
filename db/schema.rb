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

ActiveRecord::Schema.define(version: 2019_08_21_170303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hero_attributes", force: :cascade do |t|
    t.bigint "hero_id"
    t.bigint "power_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_id"], name: "index_hero_attributes_on_hero_id"
    t.index ["power_id"], name: "index_hero_attributes_on_power_id"
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.bigint "weapon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["weapon_id"], name: "index_heros_on_weapon_id"
  end

  create_table "powers", force: :cascade do |t|
    t.string "name"
    t.string "updated_at"
    t.string "created_at"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hero_attributes", "heros"
  add_foreign_key "hero_attributes", "powers"
  add_foreign_key "heros", "weapons"
end
