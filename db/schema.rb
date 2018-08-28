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

ActiveRecord::Schema.define(version: 2018_08_28_184913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "games", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "turn", default: 0, null: false
    t.integer "phase", default: 0, null: false
    t.jsonb "pools_json", default: {}, null: false
    t.jsonb "decks_json", default: {}, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "game_id"
    t.uuid "player_id"
    t.string "chair_id"
    t.string "goals", default: [], array: true
    t.integer "score", default: 0
    t.integer "placing", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_seats_on_game_id"
    t.index ["player_id"], name: "index_seats_on_player_id"
  end

  create_table "slots", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "game_id"
    t.string "location_id", null: false
    t.string "card_id", null: false
    t.string "worker_ids", default: [], null: false, array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id", "location_id", "card_id"], name: "index_slots_on_game_id_and_location_id_and_card_id", unique: true
    t.index ["game_id"], name: "index_slots_on_game_id"
  end

  add_foreign_key "seats", "games"
  add_foreign_key "seats", "players"
  add_foreign_key "slots", "games"
end
