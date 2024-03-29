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

ActiveRecord::Schema.define(:version => 20130115135525) do

  create_table "branches", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctor_schedules", :id => false, :force => true do |t|
    t.integer  "doctor_id"
    t.integer  "schedule_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "prefix"
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "branch_id"
    t.integer  "specialty_id"
    t.integer  "location_id"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schedules", :force => true do |t|
    t.string   "day"
    t.string   "hour"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "doctor_id"
  end

  create_table "specialties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
