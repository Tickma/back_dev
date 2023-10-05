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

ActiveRecord::Schema[7.0].define(version: 2023_10_05_015723) do
  create_table "events", force: :cascade do |t|
    t.integer "user_id_id"
    t.string "event_image"
    t.string "event_title"
    t.string "dutch"
    t.string "genre"
    t.integer "prefecture_id_id"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id_id"], name: "index_events_on_prefecture_id_id"
    t.index ["user_id_id"], name: "index_events_on_user_id_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.date "birthday"
    t.string "gender"
    t.integer "prefecture_id_id"
    t.string "job"
    t.string "icon_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id_id"], name: "index_users_on_prefecture_id_id"
  end

  add_foreign_key "events", "prefecture_ids"
  add_foreign_key "events", "user_ids"
  add_foreign_key "users", "prefecture_ids"
end
