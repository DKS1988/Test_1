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

ActiveRecord::Schema.define(version: 20171108215404) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "role",       null: false
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people_courses", id: false, force: :cascade do |t|
    t.integer "person_id"
    t.integer "course_id"
  end

  add_index "people_courses", ["course_id"], name: "index_people_courses_on_course_id"
  add_index "people_courses", ["person_id"], name: "index_people_courses_on_person_id"

  create_table "people_tests", id: false, force: :cascade do |t|
    t.integer "person_id"
    t.integer "test_id"
  end

  add_index "people_tests", ["person_id"], name: "index_people_tests_on_person_id"
  add_index "people_tests", ["test_id"], name: "index_people_tests_on_test_id"

  create_table "tests", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
