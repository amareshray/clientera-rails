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

ActiveRecord::Schema.define(version: 20150920211235) do

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "last_visit"
    t.string   "class_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gym_id"
  end

  add_index "clients", ["gym_id"], name: "index_clients_on_gym_id"

  create_table "clients_emails", id: false, force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "email_id",  null: false
  end

  create_table "clients_emails_join_table", force: :cascade do |t|
    t.integer "client_id"
    t.integer "email_id"
  end

  create_table "clients_emails_joins", force: :cascade do |t|
    t.integer "client_id"
    t.integer "email_id"
  end

  create_table "emails", force: :cascade do |t|
    t.text     "email_name"
    t.text     "subject"
    t.text     "from_name"
    t.text     "from_email"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gym_id"
  end

  add_index "emails", ["gym_id"], name: "index_emails_on_gym_id"

  create_table "gyms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "gyms", ["user_id"], name: "index_gyms_on_user_id"

  create_table "segments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.integer  "gym_id"
  end

  add_index "segments", ["gym_id"], name: "index_segments_on_gym_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
