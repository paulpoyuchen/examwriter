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

ActiveRecord::Schema.define(version: 20180423042407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["role_id"], name: "index_assignments_on_role_id", using: :btree
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id", using: :btree

  create_table "exams", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "prompt"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "exam_id"
    t.string   "type"
    t.string   "answer"
    t.string   "answertf"
    t.string   "answerm"
    t.string   "answera"
    t.string   "answerb"
    t.string   "answerc"
    t.string   "answerd"
    t.string   "choicea"
    t.string   "choiceb"
    t.string   "choicec"
    t.string   "choiced"
    t.string   "moption_a"
    t.string   "moption_b"
    t.string   "moption_c"
    t.string   "moption_d"
  end

  add_index "questions", ["exam_id"], name: "index_questions_on_exam_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

end
