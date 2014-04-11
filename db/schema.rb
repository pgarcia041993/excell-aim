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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140318012503) do

  create_table "payment_receipts", :force => true do |t|
    t.string   "type"
    t.string   "reference_number"
    t.string   "receipt_number"
    t.integer  "registration_transaction_id"
    t.decimal  "amount"
    t.string   "card_type"
    t.string   "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "price",      :precision => 10, :scale => 2
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "registration_transactions", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "program_id"
    t.boolean  "payment_status"
    t.string   "payment_reference_number"
    t.datetime "payment_date"
    t.datetime "created_at",                                              :null => false
    t.datetime "updated_at",                                              :null => false
    t.string   "invoice_number"
    t.decimal  "invoice_amount",           :precision => 10, :scale => 2
    t.text     "particulars"
  end

  create_table "student_orders", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "transcript_quantity"
    t.integer  "business_card_quantity"
    t.integer  "diploma_quantity"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.decimal  "total_amount",           :precision => 10, :scale => 2
    t.date     "dob"
    t.string   "address"
    t.string   "contact"
  end

end
