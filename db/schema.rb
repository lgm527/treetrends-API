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

ActiveRecord::Schema.define(version: 2019_09_20_204311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nta_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stewards", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "tree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tree_id"], name: "index_stewards_on_tree_id"
    t.index ["user_id"], name: "index_stewards_on_user_id"
  end

  create_table "trees", force: :cascade do |t|
    t.integer "census_id"
    t.string "species"
    t.string "steward"
    t.string "health"
    t.string "address"
    t.string "boroname"
    t.integer "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "stewards", "trees"
  add_foreign_key "stewards", "users"
end
