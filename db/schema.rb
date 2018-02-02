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

ActiveRecord::Schema.define(version: 20180202052629) do

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "plan_id"
    t.integer  "place_id"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_orders_on_place_id", using: :btree
    t.index ["plan_id"], name: "index_orders_on_plan_id", using: :btree
  end

  create_table "places", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "name",       limit: 65535
    t.decimal  "latitude",                 precision: 9, scale: 6
    t.decimal  "longtitude",               precision: 9, scale: 6
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.text     "image",      limit: 65535
    t.text     "explain",    limit: 65535
  end

  create_table "plans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "name",       limit: 65535
    t.integer  "cost"
    t.datetime "time"
    t.text     "season",     limit: 65535
  end

end
