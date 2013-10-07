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

ActiveRecord::Schema.define(version: 20131001181025) do

  create_table "companies", force: true do |t|
    t.string "name"
  end

  create_table "companies_employees", id: false, force: true do |t|
    t.integer "employee_id", null: false
    t.integer "company_id",  null: false
  end

  add_index "companies_employees", ["company_id"], name: "index_companies_employees_on_company_id", using: :btree
  add_index "companies_employees", ["employee_id"], name: "index_companies_employees_on_employee_id", using: :btree

  create_table "employees", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone"
    t.string   "email"
    t.string   "expertise_level"
    t.string   "mobility"
    t.string   "full_address"
    t.string   "lat"
    t.string   "lng"
    t.string   "avaibility"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["firstname"], name: "index_employees_on_firstname", using: :btree
  add_index "employees", ["lastname"], name: "index_employees_on_lastname", using: :btree

  create_table "employees_skills", id: false, force: true do |t|
    t.integer "employee_id", null: false
    t.integer "skill_id",    null: false
  end

  add_index "employees_skills", ["employee_id"], name: "index_employees_skills_on_employee_id", using: :btree
  add_index "employees_skills", ["skill_id"], name: "index_employees_skills_on_skill_id", using: :btree

  create_table "skills", force: true do |t|
    t.string "label"
  end

  add_index "skills", ["label"], name: "index_skills_on_label", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
