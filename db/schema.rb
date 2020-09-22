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

ActiveRecord::Schema.define(version: 2020_09_22_163927) do

  create_table "adverts", force: :cascade do |t|
    t.string "url"
    t.integer "source_id"
    t.string "source_name"
    t.integer "car_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_adverts_on_car_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "brand"
    t.string "car_model_name"
    t.string "equipment_variant"
    t.integer "year"
    t.string "headline"
    t.text "description"
    t.string "fuel"
    t.decimal "price"
    t.string "price_currency"
    t.integer "milage"
    t.string "milage_unit"
    t.string "seller_kind"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "image_urls", force: :cascade do |t|
    t.string "url"
    t.boolean "is_primary_image"
    t.integer "car_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_image_urls_on_car_id"
  end

  add_foreign_key "adverts", "cars"
  add_foreign_key "image_urls", "cars"
end
