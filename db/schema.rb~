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

ActiveRecord::Schema.define(version: 20160330164900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assigned_tasks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "billboard_location"
    t.string   "time"
    t.string   "duration"
    t.string   "file"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.boolean  "approved"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.string   "bank_branch_code"
    t.string   "bank_nam"
    t.string   "bank_address"
    t.string   "swift_code"
    t.string   "iban"
    t.string   "paypal_email_address"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
  end

  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "payrolls", force: :cascade do |t|
    t.string   "amount"
    t.string   "bonus"
    t.string   "salary_month"
    t.string   "salary_year"
    t.string   "payment_method"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  add_index "payrolls", ["user_id"], name: "index_payrolls_on_user_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.string   "duration"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.date     "starting_date"
    t.date     "ending_date"
  end

  create_table "tasks_users", id: false, force: :cascade do |t|
    t.integer "task_id"
    t.integer "user_id"
  end

  add_index "tasks_users", ["task_id", "user_id"], name: "index_tasks_users_on_task_id_and_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "dob"
    t.string   "gender"
    t.string   "nic"
    t.string   "ssn"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "designation"
    t.string   "country"
    t.boolean  "approved",               default: false, null: false
    t.string   "login_status"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "orders", "users"
  add_foreign_key "payments", "users"
  add_foreign_key "payrolls", "users"
end
