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

ActiveRecord::Schema.define(version: 20170517184841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_dates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "date"
    t.string   "venue_name"
    t.string   "address"
    t.string   "compacity"
    t.string   "attendance"
    t.string   "settle"
    t.string   "total"
    t.string   "complete"
    t.integer  "tours_id"
    t.index ["tours_id"], name: "index_event_dates_on_tours_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "date"
    t.string   "venue_name"
    t.string   "address"
    t.string   "compacity"
    t.string   "attendance"
    t.string   "settle"
    t.string   "total"
    t.string   "complete"
    t.integer  "tours_id"
    t.string   "id_of_tour"
    t.index ["tours_id"], name: "index_events_on_tours_id", using: :btree
  end

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_models_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree
  end

  create_table "shirts", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
    t.string   "picture"
    t.string   "s"
    t.string   "m"
    t.string   "l"
    t.string   "xl"
    t.string   "twoxl"
    t.string   "threexl"
    t.string   "total"
    t.string   "ordered"
    t.integer  "event_dates_id"
    t.string   "id_of_event"
    t.integer  "events_id"
    t.index ["event_dates_id"], name: "index_shirts_on_event_dates_id", using: :btree
    t.index ["events_id"], name: "index_shirts_on_events_id", using: :btree
  end

  create_table "tours", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "complete"
    t.integer  "total"
    t.integer  "user_id"
    t.string   "images"
    t.index ["user_id"], name: "index_tours_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "event_dates", "tours", column: "tours_id"
  add_foreign_key "events", "tours", column: "tours_id"
  add_foreign_key "shirts", "event_dates", column: "event_dates_id"
  add_foreign_key "shirts", "events", column: "events_id"
  add_foreign_key "tours", "users"
end
