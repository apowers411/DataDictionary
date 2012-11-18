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

ActiveRecord::Schema.define(:version => 20121118064408) do

  create_table "dataelements", :force => true do |t|
    t.string   "originalname"
    t.string   "devname"
    t.string   "datatype"
    t.text     "description"
    t.string   "devtable"
    t.string   "analysistype"
    t.string   "format"
    t.text     "in_house_formula"
    t.text     "recode"
    t.text     "comments"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "datasources", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.text     "description"
    t.text     "comments"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "datatable_dataelements", :force => true do |t|
    t.integer  "datatable_id"
    t.integer  "dataelement_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "datatables", :force => true do |t|
    t.integer  "datasource_id"
    t.string   "name"
    t.string   "location"
    t.integer  "year"
    t.text     "importdetail"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "description"
  end

  create_table "profilepage_dataelements", :force => true do |t|
    t.integer  "profilepage_id"
    t.integer  "dataelement_id"
    t.text     "devformula"
    t.date     "lastupdated"
    t.text     "comments"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "profilepages", :force => true do |t|
    t.string   "vertical"
    t.string   "url"
    t.string   "tab"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
