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

ActiveRecord::Schema.define(version: 2021_05_25_112838) do

  create_table "cafemenus", force: :cascade do |t|
    t.string "name"
    t.string "file"
    t.integer "faktury_id"
    t.integer "kontrahenci_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fakturies", force: :cascade do |t|
    t.string "rodzaj_dokumentu"
    t.string "numer_dokumentu"
    t.date "data_wystawienia"
    t.date "okres_od"
    t.date "okres_do"
    t.integer "kontrahenci_id"
    t.integer "cafemenu_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kontrahencis", force: :cascade do |t|
    t.string "nazwa"
    t.string "ulica"
    t.string "kod_pocztowy"
    t.string "miasto"
    t.integer "NIP"
    t.boolean "aktywna"
    t.integer "faktury_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
