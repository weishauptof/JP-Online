# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_05_011156) do

  create_table "lessons", force: :cascade do |t|
    t.string "teacher_name", default: "coco"
    t.datetime "start_time"
    t.string "user_name"
    t.string "course"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_email"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "teacher_id"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role", default: "teacher"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "instagram"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "teacher_id"
    t.string "time_zone"
    t.string "password_digest"
  end

end
