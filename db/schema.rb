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

ActiveRecord::Schema[7.0].define(version: 2022_12_07_092202) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "goal"
    t.boolean "status", default: false
    t.integer "weeknumber"
    t.bigint "challenge_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_bookings_on_challenge_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.bigint "seniority_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seniority_id"], name: "index_challenges_on_seniority_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "address"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
  end

  create_table "saved_tips", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tip_id"], name: "index_saved_tips_on_tip_id"
    t.index ["user_id"], name: "index_saved_tips_on_user_id"
  end

  create_table "saved_user_tips", force: :cascade do |t|
    t.bigint "usertip_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_saved_user_tips_on_user_id"
    t.index ["usertip_id"], name: "index_saved_user_tips_on_usertip_id"
  end

  create_table "seniorities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ranking", default: 0
    t.string "description"
  end

  create_table "tips", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "challenge_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_tips_on_challenge_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "avatar"
    t.bigint "seniority_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["seniority_id"], name: "index_users_on_seniority_id"
  end

  create_table "usertips", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id", null: false
    t.bigint "booking_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_usertips_on_booking_id"
    t.index ["user_id"], name: "index_usertips_on_user_id"
  end

  add_foreign_key "bookings", "challenges"
  add_foreign_key "bookings", "users"
  add_foreign_key "challenges", "seniorities"
  add_foreign_key "saved_tips", "tips"
  add_foreign_key "saved_tips", "users"
  add_foreign_key "saved_user_tips", "users"
  add_foreign_key "saved_user_tips", "usertips"
  add_foreign_key "tips", "challenges"
  add_foreign_key "users", "seniorities"
  add_foreign_key "usertips", "bookings"
  add_foreign_key "usertips", "users"
end
