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

ActiveRecord::Schema.define(version: 2018_07_26_001239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "internal_projects", force: :cascade do |t|
    t.string "name", null: false
    t.integer "project_num", null: false
    t.integer "category_id", default: 100, null: false
    t.integer "status_id", default: 100, null: false
    t.boolean "itar_flag", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_internal_projects_on_category_id"
    t.index ["name"], name: "index_internal_projects_on_name", unique: true
    t.index ["project_num", "category_id"], name: "index_internal_projects_on_project_num_and_category_id", unique: true, order: { project_num: :desc }
    t.index ["status_id"], name: "index_internal_projects_on_status_id"
  end

end
