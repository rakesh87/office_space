# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160627063262) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "zipcode"
    t.string   "addressable_type", limit: 25, null: false
    t.integer  "addressable_id",              null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id", using: :btree
  end

  create_table "amenities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.boolean  "public"
    t.integer  "user_id"
    t.integer  "work_space_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
    t.index ["work_space_id"], name: "index_bookings_on_work_space_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "name"
    t.string   "picturable_type", limit: 25
    t.integer  "picturable_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["picturable_type", "picturable_id"], name: "index_pictures_on_picturable_type_and_picturable_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "api_key"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "phone"
    t.string   "company_name"
    t.text     "description"
    t.string   "social_type"
    t.string   "social_token"
    t.index ["email"], name: "index_users_on_email", using: :btree
  end

  create_table "work_space_amenities", force: :cascade do |t|
    t.integer  "work_space_id"
    t.integer  "amenity_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "work_spaces", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "no_of_seats"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "city_id"
    t.index ["city_id"], name: "index_work_spaces_on_city_id", using: :btree
    t.index ["user_id"], name: "index_work_spaces_on_user_id", using: :btree
  end

end
