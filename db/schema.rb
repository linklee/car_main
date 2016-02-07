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

ActiveRecord::Schema.define(version: 20160206135422) do

  create_table "articles", force: true do |t|
    t.string   "header"
    t.string   "day"
    t.string   "month"
    t.text     "link"
    t.string   "p"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bas", force: true do |t|
    t.string   "src"
    t.string   "descr"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogo_posts", force: true do |t|
    t.integer  "user_id",          null: false
    t.string   "permalink",        null: false
    t.string   "title",            null: false
    t.boolean  "published",        null: false
    t.datetime "published_at",     null: false
    t.string   "markup_lang",      null: false
    t.text     "raw_content",      null: false
    t.text     "html_content",     null: false
    t.text     "html_overview"
    t.string   "tags_string"
    t.string   "meta_description", null: false
    t.string   "meta_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blogo_posts", ["permalink"], name: "index_blogo_posts_on_permalink", unique: true
  add_index "blogo_posts", ["published_at"], name: "index_blogo_posts_on_published_at"
  add_index "blogo_posts", ["user_id"], name: "index_blogo_posts_on_user_id"

  create_table "blogo_taggings", force: true do |t|
    t.integer "post_id", null: false
    t.integer "tag_id",  null: false
  end

  add_index "blogo_taggings", ["tag_id", "post_id"], name: "index_blogo_taggings_on_tag_id_and_post_id", unique: true

  create_table "blogo_tags", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blogo_tags", ["name"], name: "index_blogo_tags_on_name", unique: true

  create_table "blogo_users", force: true do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blogo_users", ["email"], name: "index_blogo_users_on_email", unique: true

  create_table "leads", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "photo1"
    t.string   "photo2"
    t.string   "car_type"
    t.string   "car_manufacturer"
    t.integer  "car_year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.string   "car_model"
    t.string   "coords"
    t.string   "vin"
    t.string   "ticket"
    t.string   "insurance"
    t.text     "i_comment"
    t.string   "status_photo"
  end

  create_table "page_parts", force: true do |t|
    t.string   "page_name"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
