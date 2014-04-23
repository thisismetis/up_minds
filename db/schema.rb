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

ActiveRecord::Schema.define(version: 20140423191551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employer_profiles", force: true do |t|
    t.string   "company_name"
    t.string   "company_url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mind_profiles", force: true do |t|
    t.string   "github"
    t.string   "twitter"
    t.string   "linked_in"
    t.text     "bio"
    t.string   "blog"
    t.string   "personal_site"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "proficiencies", force: true do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proficiencies", ["skill_id"], name: "index_proficiencies_on_skill_id", using: :btree
  add_index "proficiencies", ["user_id"], name: "index_proficiencies_on_user_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "featured"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "skills", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "telephone"
    t.string   "city"
    t.string   "state"
    t.string   "type"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
