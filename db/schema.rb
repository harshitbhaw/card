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

ActiveRecord::Schema.define(version: 2022_05_20_064104) do

  create_table "billings", force: :cascade do |t|
    t.integer "card_number"
    t.integer "cvc"
    t.integer "postal_code"
    t.date "valid_thru"
    t.integer "total_amount"
    t.integer "amount_paid"
    t.integer "due_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "credit_id"
    t.integer "user_id"
    t.date "end_date"
    t.index ["credit_id"], name: "index_billings_on_credit_id"
    t.index ["user_id"], name: "index_billings_on_user_id"
  end

  create_table "credits", force: :cascade do |t|
    t.string "name"
    t.integer "card_number"
    t.integer "cvc"
    t.date "start_Date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_credits_on_user_id"
  end

  create_table "debits", force: :cascade do |t|
    t.string "name"
    t.integer "card_number"
    t.integer "cvc"
    t.date "valid_from"
    t.date "valid_thru"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_debits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
