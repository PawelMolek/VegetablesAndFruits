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

ActiveRecord::Schema[7.0].define(version: 2022_05_11_213227) do
  create_table "games", force: :cascade do |t|
    t.date "game_date", default: "2022-05-17", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_games", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_player_games_on_game_id"
    t.index ["player_id"], name: "index_player_games_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.integer "points", default: 0, null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "snack_games", force: :cascade do |t|
    t.integer "snack_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id", null: false
    t.index ["game_id"], name: "index_snack_games_on_game_id"
    t.index ["player_id"], name: "index_snack_games_on_player_id"
    t.index ["snack_id"], name: "index_snack_games_on_snack_id"
  end

  create_table "snacks", force: :cascade do |t|
    t.string "name", null: false
    t.integer "points", default: 0, null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "player_games", "games"
  add_foreign_key "player_games", "players"
  add_foreign_key "snack_games", "games"
  add_foreign_key "snack_games", "players"
  add_foreign_key "snack_games", "snacks"
end
