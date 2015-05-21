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

ActiveRecord::Schema.define(version: 2) do

  create_table "movies", force: true do |t|
    t.string   "name"
    t.string   "date"
    t.date     "year_released"
    t.string   "esrb_rating"
    t.string   "run_time"
    t.string   "genre"
    t.datetime "release_date"
    t.text     "summary"
    t.string   "director"
    t.string   "writers"
    t.string   "stars"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "producers", force: true do |t|
    t.string "director"
    t.string "writers"
    t.string "stars"
  end

  create_table "summary", force: true do |t|
    t.text "summary"
  end

  create_table "user_reviews", force: true do |t|
    t.string   "your_rating"
    t.string   "rating"
    t.string   "reviews"
    t.integer  "user_id"
    t.integer  "movie_id"
    t.string   "name"
    t.integer  "number_of_reviews"
    t.datetime "reviewed_on"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.string   "age"
    t.string   "gender"
    t.string   "city"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
end
