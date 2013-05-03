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

ActiveRecord::Schema.define(:version => 20130502032510) do

  create_table "aq_programs", :force => true do |t|
    t.string   "name"
    t.integer  "aq_type_id"
    t.text     "description"
    t.string   "public"
    t.string   "locale"
    t.datetime "date_of_creation"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "financiations", :force => true do |t|
    t.string   "name"
    t.integer  "aq_program_id"
    t.integer  "organization_id"
    t.text     "description"
    t.string   "financiation_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "nodes", :force => true do |t|
    t.string   "name"
    t.boolean  "winner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "organization_type"
    t.integer  "contact_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "regulations", :force => true do |t|
    t.string   "name"
    t.integer  "aq_program_id"
    t.integer  "vehicle_id"
    t.text     "description"
    t.string   "regulation_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "vehicles", :force => true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.text     "description"
    t.string   "capacity"
    t.string   "efficiency"
    t.string   "emissions"
    t.string   "public"
    t.string   "registration_state"
    t.datetime "registration_year"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
