# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160126144524) do

  create_table "artists", force: :cascade do |t|
    t.integer  "festival_id"
    t.string   "musician"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "artists", ["festival_id"], name: "index_artists_on_festival_id"

  create_table "festivals", force: :cascade do |t|
    t.string   "fes_name"
    t.string   "fes_place"
    t.string   "artist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "fes_date"
    t.integer  "user_id"
    t.string   "artist2"
    t.string   "artist3"
    t.string   "artist4"
    t.string   "artist5"
  end

  add_index "festivals", ["fes_name"], name: "index_festivals_on_fes_name", unique: true
  add_index "festivals", ["user_id"], name: "index_festivals_on_user_id"

  create_table "setlists", force: :cascade do |t|
    t.string   "artist"
    t.string   "music1"
    t.string   "music2"
    t.string   "music3"
    t.string   "music4"
    t.string   "music5"
    t.string   "music6"
    t.string   "music7"
    t.string   "music8"
    t.string   "music9"
    t.string   "music10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "artist_id"
    t.text     "youtubeurl"
  end

  add_index "setlists", ["artist_id"], name: "index_setlists_on_artist_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
