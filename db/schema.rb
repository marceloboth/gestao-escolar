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

ActiveRecord::Schema.define(:version => 20130302164907) do

  create_table "classroom_disciplines", :force => true do |t|
    t.integer  "classroom_id"
    t.integer  "discipline_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "classroom_disciplines", ["classroom_id"], :name => "index_classroom_disciplines_on_classroom_id"
  add_index "classroom_disciplines", ["discipline_id"], :name => "index_classroom_disciplines_on_discipline_id"

  create_table "classrooms", :force => true do |t|
    t.string   "name",       :limit => 60, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "disciplines", :force => true do |t|
    t.text     "name",       :limit => 255, :null => false
    t.integer  "teacher_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "disciplines", ["teacher_id"], :name => "index_disciplines_on_teacher_id"

  create_table "students", :force => true do |t|
    t.text     "name",         :limit => 255, :null => false
    t.integer  "classroom_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "students", ["classroom_id"], :name => "index_students_on_classroom_id"

  create_table "teachers", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_foreign_key "classroom_disciplines", "classrooms", :name => "classroom_disciplines_classroom_id_fk", :dependent => :nullify
  add_foreign_key "classroom_disciplines", "disciplines", :name => "classroom_disciplines_discipline_id_fk", :dependent => :nullify

  add_foreign_key "disciplines", "teachers", :name => "disciplines_teacher_id_fk", :dependent => :nullify

  add_foreign_key "students", "classrooms", :name => "students_classroom_id_fk", :dependent => :nullify

end
