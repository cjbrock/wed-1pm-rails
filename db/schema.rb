# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_14_173150) do

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.integer "tenent_id", null: false
    t.integer "landlord_id", null: false
    t.index ["landlord_id"], name: "index_buildings_on_landlord_id"
    t.index ["tenent_id"], name: "index_buildings_on_tenent_id"
  end

  create_table "landlords", force: :cascade do |t|
    t.string "name"
    t.integer "number_building_owned"
  end

  create_table "tenents", force: :cascade do |t|
    t.string "name"
    t.integer "rent"
    t.integer "apt_number"
  end

  add_foreign_key "buildings", "landlords"
  add_foreign_key "buildings", "tenents"
end
