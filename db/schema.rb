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

ActiveRecord::Schema.define(version: 20180404202717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "nutritionist_id"
    t.integer "parent_message"
    t.string "subject"
    t.string "body"
    t.string "sender_type"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nutritionists", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "office_address"
    t.float "office_latitude"
    t.float "office_longitude"
    t.boolean "accepts_new_patients"
    t.string "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.integer "weight"
    t.float "bmi"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "goal"
    t.integer "nutritionist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
