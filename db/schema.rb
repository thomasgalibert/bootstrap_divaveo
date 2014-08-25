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

ActiveRecord::Schema.define(version: 20140822130758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "number"
    t.text     "street"
    t.string   "zipcode"
    t.string   "town"
    t.string   "country"
    t.string   "email"
    t.string   "tel"
    t.string   "fax"
    t.string   "iban"
    t.string   "bic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "cgv"
  end

  create_table "users", force: true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "firstname"
    t.string   "email"
    t.string   "role"
    t.string   "sexe"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
