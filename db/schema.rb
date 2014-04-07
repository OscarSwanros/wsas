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

ActiveRecord::Schema.define(version: 20140407222320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: true do |t|
    t.string   "model"
    t.string   "brand"
    t.string   "car_type"
    t.string   "color"
    t.string   "kms"
    t.string   "plates"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zip"
    t.string   "phone"
    t.string   "rfc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "expenses", force: true do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description", null: false
    t.float    "cost",        null: false
    t.integer  "job_id"
    t.integer  "worker_id"
  end

  create_table "jobs", force: true do |t|
    t.integer  "car_id"
    t.datetime "finished_at"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "report_number"
    t.integer  "worker_id"
    t.float    "quote"
  end

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

  create_table "workers", force: true do |t|
    t.string   "name"
    t.string   "worker_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "comission"
  end

  create_table "works", force: true do |t|
    t.integer  "worker_id"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
