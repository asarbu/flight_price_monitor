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

ActiveRecord::Schema.define(version: 2018_08_16_125109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "continent"
    t.string "country"
    t.string "city"
    t.string "iata_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flight_fares", force: :cascade do |t|
    t.integer "flight_id"
    t.float "price"
    t.string "currency"
    t.integer "available_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "departure_station"
    t.string "arrival_station"
    t.integer "passenger_count", default: 1
    t.boolean "wizz_discount_club", default: true
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "stop_watching", default: false
  end

end
