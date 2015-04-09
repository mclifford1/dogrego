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

ActiveRecord::Schema.define(version: 20150409003300) do

  create_table "dog_owners", force: true do |t|
    t.integer  "dog_id"
    t.integer  "user_id"
    t.date     "registeredtill"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dog_owners", ["dog_id"], name: "index_dog_owners_on_dog_id"
  add_index "dog_owners", ["user_id"], name: "index_dog_owners_on_user_id"

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.string   "breed"
    t.date     "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regoptions", force: true do |t|
    t.integer  "months"
    t.decimal  "price",      precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "superuser"
  end

end
