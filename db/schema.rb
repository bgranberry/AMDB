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

ActiveRecord::Schema.define(version: 20151207012945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anime_contributors", force: :cascade do |t|
    t.integer  "contributor_id"
    t.integer  "anime_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "role"
  end

  create_table "anime_genres", force: :cascade do |t|
    t.integer  "anime_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "anime_tags", force: :cascade do |t|
    t.integer  "anime_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animes", force: :cascade do |t|
    t.string   "name"
    t.integer  "runtime"
    t.string   "age_rating"
    t.integer  "year"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "air_date"
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contributors", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "birthplace"
    t.text     "trivia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "niggaplease", id: false, force: :cascade do |t|
    t.integer "ey"
    t.float   "lmao"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "anime_contributors", "animes"
  add_foreign_key "anime_contributors", "contributors"
  add_foreign_key "anime_genres", "animes"
  add_foreign_key "anime_genres", "genres"
  add_foreign_key "anime_tags", "animes"
  add_foreign_key "anime_tags", "tags"
end
