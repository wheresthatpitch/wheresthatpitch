# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_25_215749) do

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.float "latitude"
    t.float "longitude"
    t.string "eircode"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "county_id"
    t.index ["county_id"], name: "index_clubs_on_county_id"
  end

  create_table "clubs_pitches", id: false, force: :cascade do |t|
    t.integer "club_id"
    t.integer "pitch_id"
    t.index ["club_id"], name: "index_clubs_pitches_on_club_id"
    t.index ["pitch_id"], name: "index_clubs_pitches_on_pitch_id"
  end

  create_table "counties", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "province_id"
    t.index ["province_id"], name: "index_counties_on_province_id"
  end

  create_table "pitches", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "county_id"
    t.index ["county_id"], name: "index_pitches_on_county_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
