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

ActiveRecord::Schema.define(version: 20170116154951) do

  create_table "commands", force: :cascade do |t|
    t.integer  "prank_type_id"
    t.integer  "prank_id"
    t.integer  "letter_id"
    t.integer  "type_letter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "commands", ["letter_id"], name: "index_commands_on_letter_id"
  add_index "commands", ["prank_id"], name: "index_commands_on_prank_id"
  add_index "commands", ["prank_type_id"], name: "index_commands_on_prank_type_id"
  add_index "commands", ["type_letter_id"], name: "index_commands_on_type_letter_id"

  create_table "letters", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "type_letter_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "letters", ["type_letter_id"], name: "index_letters_on_type_letter_id"

  create_table "payments", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "typePayment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "prank_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pranks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "text"
    t.date     "dateCreation"
    t.text     "photo"
    t.integer  "prank_type_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "pranks", ["prank_type_id"], name: "index_pranks_on_prank_type_id"

  create_table "type_letters", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
