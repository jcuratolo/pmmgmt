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

ActiveRecord::Schema.define(version: 20141017232546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "building_features", force: true do |t|
    t.string   "bfName"
    t.integer  "building_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "building_features", ["building_id"], name: "index_building_features_on_building_id", using: :btree

  create_table "buildings", force: true do |t|
    t.string   "bName"
    t.string   "bAddress1"
    t.string   "bAddress2"
    t.string   "bCity"
    t.string   "bState"
    t.string   "bZip"
    t.string   "bPhone"
    t.string   "bUnitCount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "listings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_features", force: true do |t|
    t.string   "ufName"
    t.integer  "unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_features", ["unit_id"], name: "index_unit_features_on_unit_id", using: :btree

  create_table "units", force: true do |t|
    t.string   "uNumber"
    t.string   "uType"
    t.integer  "uBedroomCount"
    t.float    "uBathroomCount"
    t.integer  "uSquareFootage"
    t.text     "uDescription"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "building_id"
    t.boolean  "uListing"
    t.string   "unitimage_file_name"
    t.string   "unitimage_content_type"
    t.integer  "unitimage_file_size"
    t.datetime "unitimage_updated_at"
    t.string   "unitimage2_file_name"
    t.string   "unitimage2_content_type"
    t.integer  "unitimage2_file_size"
    t.datetime "unitimage2_updated_at"
    t.string   "unitimage3_file_name"
    t.string   "unitimage3_content_type"
    t.integer  "unitimage3_file_size"
    t.datetime "unitimage3_updated_at"
    t.string   "unitimage4_file_name"
    t.string   "unitimage4_content_type"
    t.integer  "unitimage4_file_size"
    t.datetime "unitimage4_updated_at"
    t.float    "uPrice"
  end

  add_index "units", ["building_id"], name: "index_units_on_building_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
