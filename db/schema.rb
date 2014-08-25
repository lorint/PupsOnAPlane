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

ActiveRecord::Schema.define(version: 20140825173602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crew_members", force: true do |t|
    t.string   "name"
    t.integer  "home_airport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "crew_members", ["home_airport_id"], name: "index_crew_members_on_home_airport_id", using: :btree

  create_table "flight_crew_members", force: true do |t|
    t.integer  "flight_id"
    t.integer  "crew_member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "flight_crew_members", ["crew_member_id"], name: "index_flight_crew_members_on_crew_member_id", using: :btree
  add_index "flight_crew_members", ["flight_id"], name: "index_flight_crew_members_on_flight_id", using: :btree

  create_table "flights", force: true do |t|
    t.integer  "number"
    t.string   "airline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "departure_airport_id"
    t.integer  "arrival_airport_id"
  end

  add_index "flights", ["arrival_airport_id"], name: "index_flights_on_arrival_airport_id", using: :btree
  add_index "flights", ["departure_airport_id"], name: "index_flights_on_departure_airport_id", using: :btree

end
