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

ActiveRecord::Schema.define(version: 2019_02_10_042050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_histories", force: :cascade do |t|
    t.bigint "service_user_id"
    t.bigint "service_channel_id"
    t.bigint "book_id"
    t.datetime "accessed_at", null: false
    t.index ["book_id"], name: "index_access_histories_on_book_id"
    t.index ["service_channel_id"], name: "index_access_histories_on_service_channel_id"
    t.index ["service_user_id"], name: "index_access_histories_on_service_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_books_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "service_channels", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "service_users", force: :cascade do |t|
    t.bigint "platform_id"
    t.string "name", null: false
    t.index ["platform_id"], name: "index_service_users_on_platform_id"
  end

  add_foreign_key "access_histories", "books"
  add_foreign_key "access_histories", "service_channels"
  add_foreign_key "access_histories", "service_users"
  add_foreign_key "books", "categories"
  add_foreign_key "service_users", "platforms"
end
