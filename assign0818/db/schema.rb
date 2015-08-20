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

ActiveRecord::Schema.define(version: 20150819235130) do

  create_table "appointments", force: true do |t|
    t.string   "date_of_visit"
    t.string   "customer"
    t.string   "reminder"
    t.string   "reason"
    t.integer  "doctor_id"
    t.integer  "pet_record_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"
  add_index "appointments", ["pet_record_id"], name: "index_appointments_on_pet_record_id"

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "school"
    t.string   "experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pet_records", force: true do |t|
    t.string   "pet_type"
    t.string   "breed"
    t.integer  "age"
    t.integer  "weight"
    t.string   "date_last_visit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
