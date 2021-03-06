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

ActiveRecord::Schema.define(version: 20180103173923) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "section_id"
    t.string "slug"
    t.string "name"
    t.text "description"
    t.string "name_ru"
    t.text "description_ru"
    t.string "name_en"
    t.text "description_en"
    t.integer "position", default: 0
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "seo"
    t.string "seo_ru"
    t.string "seo_en"
  end

  create_table "features", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "name_ru"
    t.string "name_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "category_id"
    t.string "name"
    t.string "name_ru"
    t.string "name_en"
    t.text "haslo"
    t.text "haslo_ru"
    t.text "haslo_en"
    t.text "description"
    t.text "description_ru"
    t.text "description_en"
    t.text "address"
    t.text "address_ru"
    t.text "address_en"
    t.string "seo"
    t.string "seo_ru"
    t.string "seo_en"
    t.string "phone"
    t.string "email"
    t.string "web"
    t.string "slug"
    t.integer "place_id"
    t.string "lat"
    t.string "lng"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.boolean "checked", default: false
  end

  create_table "places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "slug"
    t.string "name"
    t.string "name_ru"
    t.string "name_en"
    t.text "description"
    t.text "description_ru"
    t.text "description_en"
    t.string "seo"
    t.string "seo_ru"
    t.string "seo_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "slug"
    t.string "name"
    t.string "name_ru"
    t.string "name_en"
    t.text "description"
    t.text "description_ru"
    t.text "description_en"
    t.integer "position", default: 0
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "seo"
    t.string "seo_ru"
    t.string "seo_en"
  end

end
