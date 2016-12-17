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

ActiveRecord::Schema.define(version: 20161217043922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_listings", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "location"
    t.string   "revenue"
    t.string   "cash_flow"
    t.text     "business_description"
    t.integer  "property_size"
    t.integer  "years_estd"
    t.string   "property_type"
    t.text     "business_location"
    t.text     "premise_details"
    t.text     "competition"
    t.text     "expansion_potential"
    t.integer  "employees"
    t.string   "trading_hours"
    t.text     "support_training"
    t.text     "financing_available"
    t.text     "reason_for_selling"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "featured"
    t.string   "photo"
    t.boolean  "approve",              default: false
    t.index ["user_id"], name: "index_business_listings_on_user_id", using: :btree
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "location"
    t.string   "revenue"
    t.string   "cash_flow"
    t.text     "business_description"
    t.integer  "property_size"
    t.integer  "years_estd"
    t.string   "property_type"
    t.text     "business_location"
    t.text     "premise_details"
    t.text     "competition"
    t.text     "expansion_potential"
    t.integer  "employees"
    t.string   "trading_hours"
    t.text     "support_training"
    t.text     "financing_available"
    t.text     "reason_for_selling"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_listings_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "photo"
    t.boolean  "admin"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "country_select"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
