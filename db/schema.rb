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

ActiveRecord::Schema.define(version: 20150228132324) do

  create_table "toilets", force: true do |t|
    t.string   "title"
    t.string   "area"
    t.string   "address"
    t.float    "latitude",      limit: 24
    t.float    "longitude",     limit: 24
    t.string   "time"
    t.integer  "car_normal",               default: 0
    t.integer  "car_challenge",            default: 0
    t.string   "type"
    t.integer  "man_you",                  default: 0
    t.integer  "man_wa",                   default: 0
    t.integer  "man_sho",                  default: 0
    t.integer  "woman_you",                default: 0
    t.integer  "woman_wa",                 default: 0
    t.integer  "all_you",                  default: 0
    t.integer  "all_wa",                   default: 0
    t.integer  "child_dai",                default: 0
    t.integer  "child_sho",                default: 0
    t.integer  "wash",                     default: 0
    t.boolean  "tesuri",                   default: false
    t.boolean  "free",                     default: false
    t.string   "lever"
    t.boolean  "emergency",                default: false
    t.string   "door"
    t.string   "space"
    t.string   "direction"
    t.boolean  "wash_flag",                default: false
    t.boolean  "care_flag",                default: false
    t.boolean  "ostomate_flag",            default: false
    t.string   "tap"
    t.boolean  "dry_flag",                 default: false
    t.boolean  "rest_flag",                default: false
    t.boolean  "baggage_flag",             default: false
    t.boolean  "hook_flag",                default: false
    t.boolean  "infant_chair",             default: false
    t.boolean  "infant_bed",               default: false
    t.string   "sightseeing"
    t.string   "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
