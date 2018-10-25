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

ActiveRecord::Schema.define(version: 2018_10_25_170955) do

  create_table "adventurer_classes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_spell_lists", force: :cascade do |t|
    t.integer "spell_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "adventurer_class_id"
    t.index ["adventurer_class_id"], name: "index_class_spell_lists_on_adventurer_class_id"
    t.index ["spell_id"], name: "index_class_spell_lists_on_spell_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "schoolName"
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
    t.integer "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_spells_on_school_id"
  end

end
