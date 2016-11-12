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

ActiveRecord::Schema.define(version: 20161112200806) do

  create_table "claims", force: :cascade do |t|
    t.text     "explanation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proposal_id"
    t.integer  "user_id"
    t.integer  "client_id"
    t.integer  "instructor_id"
    t.integer  "creator_id"
    t.integer  "claimer_id"
    t.string   "claim_status",  limit: 255
    t.string   "course"
  end

  create_table "jointable_proposals_subjects", force: :cascade do |t|
    t.string "subjects",  limit: 255
    t.string "proposals", limit: 255
  end

  create_table "proposals", force: :cascade do |t|
    t.string   "title",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_file_name",       limit: 255
    t.string   "image_content_type",    limit: 255
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "document_file_name",    limit: 255
    t.string   "document_content_type", limit: 255
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "semester_id",           limit: 255
    t.text     "abstract"
    t.string   "course_id",             limit: 255
    t.boolean  "course_type"
    t.text     "deliverables"
    t.string   "subject",               limit: 255
    t.text     "narrative"
    t.string   "first_name",            limit: 255
    t.string   "last_name",             limit: 255
    t.string   "organization",          limit: 255
    t.string   "time",                  limit: 255
    t.string   "status",                limit: 255
    t.string   "course",                limit: 255
    t.text     "relevance"
    t.text     "feedback"
    t.string   "client_name",           limit: 255
    t.string   "client_email",          limit: 255
    t.integer  "client_phone1"
    t.integer  "client_phone2"
    t.integer  "client_phone3"
    t.boolean  "agreement"
    t.integer  "claim_id"
  end

  add_index "proposals", ["user_id"], name: "index_proposals_on_user_id"

  create_table "subjects", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "role",                   limit: 255
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
