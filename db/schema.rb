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

ActiveRecord::Schema.define(version: 20170401201224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "providers", force: :cascade do |t|
    t.string   "accountid"
    t.date     "crlauditdate"
    t.string   "website"
    t.string   "accountrating"
    t.string   "accountphone"
    t.string   "accountfax"
    t.string   "contactid"
    t.string   "locprovided"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "title"
    t.string   "credentials"
    t.string   "phone"
    t.string   "crlphonenumber"
    t.string   "formerloh"
    t.string   "mailingaddress"
    t.string   "mailingcity"
    t.string   "mailingstate"
    t.string   "mailingzip"
    t.float    "maillatitude"
    t.float    "maillongitude"
    t.string   "email"
    t.string   "otheremail"
    t.string   "description"
    t.string   "languages"
    t.string   "patientagebracket"
    t.string   "insurancepanels"
    t.string   "specialtyareas"
    t.string   "treatmentmodality"
    t.string   "treatmentorientation"
    t.string   "mailingstreet"
    t.string   "accountname"
    t.string   "distance"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
