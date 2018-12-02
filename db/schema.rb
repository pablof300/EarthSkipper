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

ActiveRecord::Schema.define(version: 2018_12_02_114716) do

  create_table "trips", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "verified"
    t.integer "price"
    t.string "destination"
    t.date "startDate"
    t.date "returnDate"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "user_id"
    t.string "image_one_file_name"
    t.string "image_one_content_type"
    t.integer "image_one_file_size"
    t.datetime "image_one_updated_at"
    t.string "image_two_file_name"
    t.string "image_two_content_type"
    t.integer "image_two_file_size"
    t.datetime "image_two_updated_at"
    t.string "image_three_file_name"
    t.string "image_three_content_type"
    t.integer "image_three_file_size"
    t.datetime "image_three_updated_at"
    t.text "https"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.string "username"
    t.string "password_digest"
  end

end
