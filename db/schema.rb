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

ActiveRecord::Schema[7.0].define(version: 2023_02_15_175406) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "mutual", default: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id", "friend_id"], name: "index_friendships_on_user_id_and_friend_id", unique: true
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "habitlogs", force: :cascade do |t|
    t.bigint "habit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "done_at"
    t.datetime "due_date_was"
    t.integer "streak_is_now", default: 0
    t.integer "points_are_now", default: 0
    t.integer "habitcount_is_now", default: 0
    t.string "frequency_variable", default: "day"
    t.integer "frequency_number", default: 1
    t.boolean "level_3_activated", default: false
    t.boolean "level_4_activated", default: false
    t.boolean "level_5_activated", default: false
    t.index ["habit_id"], name: "index_habitlogs_on_habit_id"
  end

  create_table "habits", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "buddy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "My New Habit"
    t.boolean "habit_public", default: true
    t.text "motivation"
    t.boolean "motivation_public", default: true
    t.string "category", default: "None"
    t.date "start_date", default: "2023-02-15"
    t.date "end_date"
    t.string "frequency_variable", default: "day"
    t.integer "frequency_number", default: 1
    t.string "timeframe", default: "day"
    t.integer "importance_level", default: 1
    t.string "contact_details", default: "Your mum's phonenumber"
    t.string "public_shame", default: "Your Social Network of Choice"
    t.string "bank_connection", default: "Kim K's bankaccount"
    t.integer "streak_count", default: 0
    t.datetime "save_click_time"
    t.boolean "done", default: false
    t.integer "habit_points", default: 0
    t.datetime "due_date"
    t.integer "habitcount"
    t.integer "habitcount_day"
    t.integer "habitcount_month"
    t.integer "habitcount_week"
    t.integer "habitcount_year"
    t.index ["buddy_id"], name: "index_habits_on_buddy_id"
    t.index ["user_id"], name: "index_habits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "points", default: 0
    t.integer "age"
    t.string "nickname"
    t.string "time_zone", default: "Amsterdam"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "friendships", "users"
  add_foreign_key "friendships", "users", column: "friend_id"
  add_foreign_key "habitlogs", "habits"
  add_foreign_key "habits", "users"
  add_foreign_key "habits", "users", column: "buddy_id"
end
