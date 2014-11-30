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

ActiveRecord::Schema.define(version: 20141130191503) do

  create_table "booking_requests", force: true do |t|
    t.integer  "listing_id"
    t.date     "requested_dates",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",         default: 0,      null: false
    t.string   "status",          default: "Open", null: false
  end

  add_index "booking_requests", ["listing_id"], name: "index_booking_requests_on_listing_id"
  add_index "booking_requests", ["user_id"], name: "index_booking_requests_on_user_id"

  create_table "listings", force: true do |t|
    t.integer  "user_id"
    t.string   "title",        default: "",  null: false
    t.text     "description",  default: "",  null: false
    t.string   "neighborhood", default: "",  null: false
    t.string   "address",      default: "",  null: false
    t.string   "city",         default: "",  null: false
    t.string   "state",        default: "",  null: false
    t.string   "country",      default: "",  null: false
    t.decimal  "price",        default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "listings", ["user_id"], name: "index_listings_on_user_id"

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
