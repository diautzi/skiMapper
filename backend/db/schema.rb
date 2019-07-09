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

ActiveRecord::Schema.define(version: 2019_06_26_192414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "trail_id"
    t.string "content"
    t.string "pic_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trail_id"], name: "index_comments_on_trail_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "completed_trails", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "trail_id"
    t.string "trail_name"
    t.string "trail_image"
    t.string "trail_location"
    t.integer "trail_length"
    t.string "trail_difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trail_id"], name: "index_completed_trails_on_trail_id"
    t.index ["user_id"], name: "index_completed_trails_on_user_id"
  end

  create_table "trails", force: :cascade do |t|
    t.integer "trail_id"
    t.string "name"
    t.string "type"
    t.string "summary"
    t.string "difficulty"
    t.integer "stars"
    t.integer "starVotes"
    t.string "location"
    t.string "imgSqSmall"
    t.string "imgSmall"
    t.string "imgSmallMed"
    t.string "imgMed"
    t.float "length"
    t.integer "ascent"
    t.integer "descent"
    t.integer "high"
    t.integer "low"
    t.float "longitude"
    t.float "latitude"
    t.string "conditionStatus"
    t.string "conditionDetails"
    t.datetime "conditionDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "image"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
