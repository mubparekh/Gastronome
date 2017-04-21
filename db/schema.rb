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

ActiveRecord::Schema.define(version: 20150316171000) do

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "amount"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description",  limit: 5000
    t.string   "cuisine_type"
    t.string   "cooking_time"
    t.text     "directions",   limit: 5000
    t.integer  "serving_size"
    t.string   "ingredients"
  end

  create_table "responses", force: true do |t|
    t.text     "comment",    limit: 1000
    t.integer  "rating"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "responses", ["recipe_id", "created_at"], name: "index_responses_on_recipe_id_and_created_at"

end
