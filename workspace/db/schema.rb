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

ActiveRecord::Schema.define(version: 20150613031445) do

  create_table "categoria", force: :cascade do |t|
    t.string   "nomcateg",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ciudads", force: :cascade do |t|
    t.string   "nomciudad",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "detpedidos", force: :cascade do |t|
    t.integer  "canped",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "plato_id",   limit: 4
    t.integer  "pedido_id",  limit: 4
  end

  create_table "horaentregas", force: :cascade do |t|
    t.string   "deshora",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.datetime "hora"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",        limit: 4
    t.integer  "restaurant_id",  limit: 4
    t.integer  "horaentrega_id", limit: 4
  end

  create_table "platos", force: :cascade do |t|
    t.date     "fecha"
    t.string   "nomplato",       limit: 255
    t.integer  "cantidad",       limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "tipoplato_id",   limit: 4
    t.integer  "restaurants_id", limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.decimal  "price",                   precision: 10
    t.integer  "quantity",    limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "direcc",     limit: 255
    t.text     "resena",     limit: 65535
    t.string   "correo",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
    t.integer  "ciudad_id",  limit: 4
  end

  create_table "restaurants_categoria", force: :cascade do |t|
    t.integer "restaurant_id", limit: 4
    t.integer "categorium_id", limit: 4
  end

  add_index "restaurants_categoria", ["categorium_id"], name: "index_restaurants_categoria_on_categorium_id", using: :btree
  add_index "restaurants_categoria", ["restaurant_id"], name: "index_restaurants_categoria_on_restaurant_id", using: :btree

  create_table "tipomenutests", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tipoplatos", force: :cascade do |t|
    t.string   "destipplato", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
