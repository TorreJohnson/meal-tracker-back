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

ActiveRecord::Schema.define(version: 20180416134244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_items", force: :cascade do |t|
    t.integer "user_id"
    t.string "meal_type"
    t.datetime "date"
    t.string "name"
    t.string "upc"
    t.string "measurement"
    t.integer "quantity"
    t.integer "beta_carotene"
    t.integer "caffeine"
    t.integer "calcium"
    t.integer "carbohydrate"
    t.integer "cholesterol"
    t.integer "calories"
    t.integer "fat"
    t.integer "fiber"
    t.integer "folic_acid"
    t.integer "iron"
    t.integer "niacin"
    t.integer "potassium"
    t.integer "protein"
    t.integer "riboflavin"
    t.integer "sodium"
    t.integer "sugars"
    t.integer "thiamin"
    t.integer "vitamin_a"
    t.integer "vitamin_b12"
    t.integer "vitamin_c"
    t.integer "vitamin_d"
    t.integer "vitamin_e"
    t.integer "vitamin_k"
    t.integer "zinc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "high_res"
    t.integer "serving"
    t.string "serving_unit"
    t.integer "serving_in_grams"
    t.string "brand"
    t.integer "ndb_no"
  end

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
    t.boolean "read", default: false
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
    t.string "company_name"
    t.string "profile_photo"
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
    t.string "profile_photo"
    t.integer "height"
    t.date "birthday"
    t.integer "rec_beta_carotene"
    t.integer "rec_caffeine"
    t.integer "rec_calcium"
    t.integer "rec_carbohydrate"
    t.integer "rec_cholesterol"
    t.integer "rec_calories"
    t.integer "rec_fat"
    t.integer "rec_fiber"
    t.integer "rec_folic_acid"
    t.integer "rec_iron"
    t.integer "rec_niacin"
    t.integer "rec_potassium"
    t.integer "rec_protein"
    t.integer "rec_riboflavin"
    t.integer "rec_sodium"
    t.integer "rec_sugars"
    t.integer "rec_thiamin"
    t.integer "rec_vitamin_a"
    t.integer "rec_vitamin_b12"
    t.integer "rec_vitamin_c"
    t.integer "rec_vitamin_d"
    t.integer "rec_vitamin_e"
    t.integer "rec_vitamin_k"
    t.integer "rec_zinc"
  end

end
