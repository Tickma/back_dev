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

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_12_05_023321) do
=======
ActiveRecord::Schema[7.0].define(version: 2023_11_08_031354) do
  create_table "chatroom_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "chatroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_chatroom_users_on_chatroom_id"
    t.index ["user_id"], name: "index_chatroom_users_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chatrooms_on_user_id"
  end

>>>>>>> aea4507 ([fix] colum name _id derete)
  create_table "event_users", force: :cascade do |t|
    t.integer "user_id_id"
    t.integer "event_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id_id"], name: "index_event_users_on_event_id_id"
    t.index ["user_id_id"], name: "index_event_users_on_user_id_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "user_id"
    t.string "event_image"
    t.string "event_title"
    t.string "dutch"
    t.string "genre"
    t.integer "prefecture_id"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_events_on_prefecture_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "chatroom_id", null: false
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
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
    t.integer "prefecture_id"
    t.string "job"
    t.string "icon_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_users_on_prefecture_id"
  end

  add_foreign_key "chatroom_users", "chatrooms"
  add_foreign_key "chatroom_users", "users"
  add_foreign_key "chatrooms", "users"
  add_foreign_key "event_users", "event_ids"
  add_foreign_key "event_users", "user_ids"
<<<<<<< HEAD
  add_foreign_key "events", "prefecture_ids"
  add_foreign_key "events", "user_ids"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
=======
  add_foreign_key "events", "prefectures"
  add_foreign_key "events", "users"
>>>>>>> aea4507 ([fix] colum name _id derete)
end
