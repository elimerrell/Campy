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

ActiveRecord::Schema.define(version: 2019_03_04_203144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campsites", force: :cascade do |t|
    t.bigint "CampsiteID"
    t.bigint "FacilityID"
    t.string "TypeOfUse"
    t.string "Loop"
    t.string "CampsiteAccessible"
    t.float "CampsiteLongitude"
    t.float "CampsiteLatitude"
  end

  create_table "facilities", force: :cascade do |t|
    t.integer "FacilityID"
    t.integer "ParentRecAreaID"
    t.string "FacilityName"
    t.text "FacilityDescription"
    t.text "FacilityTypeDescription"
    t.text "FacilityUseFeeDescription"
    t.text "FacilityDirections"
    t.string "FacilityPhone"
    t.string "FacilityEmail"
    t.string "FacilityReservationURL"
    t.float "FacilityLongitude"
    t.float "FacilityLatitude"
    t.boolean "Reservable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facility_addresses", force: :cascade do |t|
    t.bigint "FacilityAddressID"
    t.bigint "FacilityID"
    t.string "FacilityStreetAddress1"
    t.string "FacilityStreetAddress2"
    t.string "FacilityStreetAddress3"
    t.string "City"
    t.integer "PostalCode"
    t.string "AddressStateCode"
    t.string "AddressCountryCode"
  end

end
