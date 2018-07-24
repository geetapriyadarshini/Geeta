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

ActiveRecord::Schema.define(version: 2018_07_24_061317) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.integer "state_id"
    t.integer "city_id"
    t.string "postcode"
    t.datetime "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_companies_on_city_id"
    t.index ["country_id"], name: "index_companies_on_country_id"
    t.index ["state_id"], name: "index_companies_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imgs", force: :cascade do |t|
    t.string "real_name"
    t.string "image_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "nodes", force: :cascade do |t|
    t.string "node_name"
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_nodes_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "place_name"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_places_on_company_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "region_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "state_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_regions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_user_regions_on_region_id"
    t.index ["user_id"], name: "index_user_regions_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "image_id"
    t.integer "img_id"
    t.string "first_name"
    t.string "last_name"
    t.integer "company_id"
    t.integer "user_role_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.float "monthly_charge"
    t.binary "notes"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
