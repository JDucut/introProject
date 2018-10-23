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

ActiveRecord::Schema.define(version: 2018_10_23_215133) do

  create_table "adventurer_classes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_spell_lists", force: :cascade do |t|
    t.integer "className_id"
    t.integer "spellName_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["className_id"], name: "index_class_spell_lists_on_className_id"
    t.index ["spellName_id"], name: "index_class_spell_lists_on_spellName_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "concentration"
    t.string "description"
    t.string "range"
    t.string "components"
    t.string "duration"
    t.string "castingTime"
    t.string "level"
    t.integer "schoolName_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schoolName_id"], name: "index_spells_on_schoolName_id"
  end

end
