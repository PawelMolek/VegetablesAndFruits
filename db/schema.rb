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

ActiveRecord::Schema[7.0].define(version: 2022_05_06_104858) do
  create_table "games", force: :cascade do |t|
    t.date "game_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participant_games", force: :cascade do |t|
    t.integer "game_id"
    t.integer "participant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_participant_games_on_game_id"
    t.index ["participant_id"], name: "index_participant_games_on_participant_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name", null: false
    t.integer "points", default: 0, null: false
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_participants_on_game_id"
  end

  create_table "snack_participants", force: :cascade do |t|
    t.integer "snack_id"
    t.integer "participant_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_snack_participants_on_game_id"
    t.index ["participant_id"], name: "index_snack_participants_on_participant_id"
    t.index ["snack_id"], name: "index_snack_participants_on_snack_id"
  end

  create_table "snacks", force: :cascade do |t|
    t.string "name", null: false
    t.integer "points", default: 0, null: false
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_snacks_on_game_id"
  end

  add_foreign_key "participants", "games"
  add_foreign_key "snacks", "games"
end
