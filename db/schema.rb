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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130303020045) do

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "credit"
    t.float    "price"
    t.float    "hours"
    t.integer  "user_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "filename"
    t.binary   "data"
    t.string   "mime_type"
    t.string   "distro"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "klasses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.float    "credit"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "hours"
    t.integer  "user_id"
  end

  add_index "klasses", ["user_id"], :name => "index_klasses_on_user_id"

  create_table "licenses", :force => true do |t|
    t.string   "license"
    t.string   "state"
    t.string   "organization"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "requirements", :force => true do |t|
    t.string   "distro"
    t.float    "max"
    t.float    "min"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statutes", :force => true do |t|
    t.integer  "license_id"
    t.integer  "requirement_id"
    t.date     "deadline"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "license_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
