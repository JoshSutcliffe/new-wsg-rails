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

ActiveRecord::Schema.define(version: 20160404043156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "stadium_id"
    t.string   "remark"
  end

  add_index "comments", ["stadium_id"], name: "index_comments_on_stadium_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "stadium_id"
    t.integer  "photo_id"
  end

  add_index "likes", ["photo_id"], name: "index_likes_on_photo_id", using: :btree
  add_index "likes", ["stadium_id"], name: "index_likes_on_stadium_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "stadium_id"
    t.string   "name"
  end

  add_index "photos", ["stadium_id"], name: "index_photos_on_stadium_id", using: :btree
  add_index "photos", ["user_id"], name: "index_photos_on_user_id", using: :btree

  create_table "stadia", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "city"
    t.string   "country"
    t.integer  "capacity"
    t.string   "bio"
    t.string   "clubs"
    t.string   "picture"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
  end

  add_foreign_key "comments", "stadia"
  add_foreign_key "comments", "users"
  add_foreign_key "likes", "photos"
  add_foreign_key "likes", "stadia"
  add_foreign_key "likes", "users"
  add_foreign_key "photos", "stadia"
  add_foreign_key "photos", "users"
end
