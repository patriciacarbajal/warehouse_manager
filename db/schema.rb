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

ActiveRecord::Schema.define(version: 20160728191952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "shipment_id"
    t.integer  "warehouse_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "products", ["shipment_id"], name: "index_products_on_shipment_id", using: :btree
  add_index "products", ["warehouse_id"], name: "index_products_on_warehouse_id", using: :btree

  create_table "shipments", force: :cascade do |t|
    t.integer  "warehouse_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "shipments", ["warehouse_id"], name: "index_shipments_on_warehouse_id", using: :btree

  create_table "warehouses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "products", "shipments"
  add_foreign_key "products", "warehouses"
  add_foreign_key "shipments", "warehouses"
end
