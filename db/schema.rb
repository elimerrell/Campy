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

ActiveRecord::Schema.define(version: 2019_03_07_173223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campsites", force: :cascade do |t|
    t.bigint "facility_id"
    t.string "campsite_name"
    t.string "type_of_use"
    t.string "loop"
    t.string "campsite_accessible"
    t.float "campsite_longitude"
    t.float "campsite_latitude"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "facility_id"
    t.integer "rating"
    t.string "title"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rec_area_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.integer "parent_rec_area_id"
    t.string "facility_name"
    t.text "facility_description"
    t.text "facility_type_description"
    t.text "facility_use_fee_description"
    t.text "facility_directions"
    t.string "facility_phone"
    t.string "facility_email"
    t.string "facility_reservation_url"
    t.float "facility_longitude"
    t.float "facility_latitude"
    t.boolean "reservable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facility_addresses", force: :cascade do |t|
    t.bigint "facility_id"
    t.string "facility_street_address1"
    t.string "facility_street_address2"
    t.string "facility_street_address3"
    t.string "city"
    t.integer "postal_code"
    t.string "address_state_code"
    t.string "address_country_code"
  end

  create_table "rec_area_facilities", force: :cascade do |t|
    t.integer "facility_id"
    t.integer "rec_area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rec_areas", force: :cascade do |t|
    t.string "rec_area_name"
    t.text "rec_area_description"
    t.text "rec_area_directions"
    t.string "rec_area_phone"
    t.string "rec_area_email"
    t.float "rec_area_longitude"
    t.float "rec_area_latitude"
    t.string "keywords"
    t.boolean "reservable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.string "location"
    t.string "status"
    t.string "user_img"
    t.text "bio"
  end

end
