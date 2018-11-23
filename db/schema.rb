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

ActiveRecord::Schema.define(version: 2018_11_22_162439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "all_sharks", force: :cascade do |t|
    t.integer "Season"
    t.integer "no_in_series"
    t.string "company"
    t.string "Deal"
    t.string "Industry"
    t.string "Entrepreneur_gender"
    t.string "amount"
    t.string "equity"
    t.string "valuation"
    t.integer "corcoran"
    t.integer "cuban"
    t.integer "greiner"
    t.integer "herjavec"
    t.integer "john"
    t.integer "oleary"
    t.integer "harrington"
    t.integer "guest"
    t.integer "t_sharks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
