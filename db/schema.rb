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

ActiveRecord::Schema[7.0].define(version: 2022_04_18_121634) do
  create_table "games", force: :cascade do |t|
    t.integer "participant_one_id", null: false
    t.integer "participant_two_id", null: false
    t.integer "participant_three_id", null: false
    t.integer "participant_four_id", null: false
    t.integer "snack_one_id", null: false
    t.integer "snack_two_id", null: false
    t.integer "snack_three_id"
    t.date "game_date"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["participant_four_id"], name: "index_games_on_participant_four_id"
    t.index ["participant_one_id"], name: "index_games_on_participant_one_id"
    t.index ["participant_three_id"], name: "index_games_on_participant_three_id"
    t.index ["participant_two_id"], name: "index_games_on_participant_two_id"
    t.index ["snack_one_id"], name: "index_games_on_snack_one_id"
    t.index ["snack_three_id"], name: "index_games_on_snack_three_id"
    t.index ["snack_two_id"], name: "index_games_on_snack_two_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
    t.integer "points", default: 0
  end

  create_table "snacks", force: :cascade do |t|
    t.string "title", null: false
    t.integer "points", default: 0
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "participants", column: "participant_four_id"
  add_foreign_key "games", "participants", column: "participant_one_id"
  add_foreign_key "games", "participants", column: "participant_three_id"
  add_foreign_key "games", "participants", column: "participant_two_id"
  add_foreign_key "games", "snacks", column: "snack_one_id"
  add_foreign_key "games", "snacks", column: "snack_three_id"
  add_foreign_key "games", "snacks", column: "snack_two_id"
end
