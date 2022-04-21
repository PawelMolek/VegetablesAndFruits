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

ActiveRecord::Schema[7.0].define(version: 2022_04_18_185342) do
  create_table "games", force: :cascade do |t|
    t.integer "participants_id", null: false
    t.date "game_date"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["participants_id"], name: "index_games_on_participants_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
    t.integer "points", default: 0
    t.integer "snacks_id"
    t.index ["snacks_id"], name: "index_participants_on_snacks_id"
  end

  create_table "snacks", force: :cascade do |t|
    t.string "title", null: false
    t.integer "points", default: 0
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "participants", column: "participants_id"
  add_foreign_key "participants", "snacks", column: "snacks_id"
end
