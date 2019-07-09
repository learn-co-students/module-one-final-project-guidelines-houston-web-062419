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

ActiveRecord::Schema.define(version: 4) do

  create_table "houses", force: :cascade do |t|
    t.string "name"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email_address"
  end

  create_table "values", force: :cascade do |t|
    t.string  "name"
    t.integer "student_id"
    t.integer "house_id"
    t.string  "description"
    t.float   "overall_score"
    t.float   "astronomy_score"
    t.float   "charms_score"
    t.float   "defense_score"
    t.float   "flying_score"
    t.float   "herbology_score"
    t.float   "history_score"
    t.float   "potions_score"
    t.float   "transfiguration_score"
  end

end
