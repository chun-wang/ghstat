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

ActiveRecord::Schema.define(version: 20150802083002) do

  create_table "comments", force: :cascade do |t|
    t.integer  "comment_id"
    t.string   "sha"
    t.text     "content"
    t.string   "url"
    t.string   "creator"
    t.datetime "create_date"
    t.datetime "update_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "commit_files", force: :cascade do |t|
    t.string   "sha"
    t.string   "filename"
    t.integer  "additions"
    t.integer  "deletions"
    t.integer  "changes"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commits", force: :cascade do |t|
    t.string   "sha"
    t.string   "message"
    t.string   "url"
    t.string   "author"
    t.datetime "commit_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "organization_users", force: :cascade do |t|
    t.string   "name"
    t.string   "user"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pull_requests", force: :cascade do |t|
    t.integer  "request_id"
    t.integer  "request_number"
    t.string   "title"
    t.text     "content"
    t.string   "url"
    t.string   "repo"
    t.string   "state"
    t.string   "status"
    t.string   "creator"
    t.datetime "create_date"
    t.datetime "update_date"
    t.datetime "closed_date"
    t.datetime "merge_date"
    t.datetime "merged_by"
    t.datetime "closed_by"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "review_comments", force: :cascade do |t|
    t.integer  "request_id"
    t.string   "sha"
    t.text     "content"
    t.string   "url"
    t.string   "creator"
    t.datetime "create_date"
    t.datetime "update_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "avatar_url"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
