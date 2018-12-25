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

ActiveRecord::Schema.define(version: 2018_12_23_181401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.text "name"
    t.text "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_tracks", id: false, force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.bigint "track_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_vinyls", id: false, force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.bigint "vinyl_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crates", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_vinyls", id: false, force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.bigint "vinyl_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "vinyl_id"
    t.index ["vinyl_id"], name: "index_tracks_on_vinyl_id"
  end

  create_table "vinyls", force: :cascade do |t|
    t.text "title"
    t.text "code"
    t.text "image_url"
    t.date "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "label_id"
    t.bigint "crate_id"
    t.index ["crate_id"], name: "index_vinyls_on_crate_id"
    t.index ["label_id"], name: "index_vinyls_on_label_id"
  end

  add_foreign_key "tracks", "vinyls"
  add_foreign_key "vinyls", "crates"
  add_foreign_key "vinyls", "labels"
end
