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

ActiveRecord::Schema.define(version: 20150507191153) do

  create_table "categories", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "directories", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "category_id",  limit: 4
    t.string   "nombre",       limit: 255
    t.text     "descripcion",  limit: 65535
    t.string   "direccion",    limit: 255
    t.string   "comuna",       limit: 255
    t.string   "ciudad",       limit: 255
    t.string   "region",       limit: 255
    t.integer  "telefono",     limit: 4
    t.integer  "codigo_area",  limit: 4
    t.integer  "celular",      limit: 4
    t.string   "email",        limit: 255
    t.string   "foto_perfil",  limit: 255
    t.string   "foto_portada", limit: 255
    t.string   "estado",       limit: 255
    t.string   "layout",       limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "directories", ["category_id"], name: "index_directories_on_category_id", using: :btree
  add_index "directories", ["user_id"], name: "index_directories_on_user_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "directory_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "likes", ["directory_id"], name: "index_likes_on_directory_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "links", force: :cascade do |t|
    t.integer  "directory_id", limit: 4
    t.string   "tipo",         limit: 255
    t.string   "url",          limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "links", ["directory_id"], name: "index_links_on_directory_id", using: :btree

  create_table "subcategories", force: :cascade do |t|
    t.integer  "category_id", limit: 4
    t.string   "nombre",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "nombre",                 limit: 255, default: "", null: false
    t.string   "apellidos",              limit: 255, default: "", null: false
    t.string   "rol",                    limit: 255, default: ""
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "views", force: :cascade do |t|
    t.integer  "directory_id", limit: 4
    t.date     "fecha"
    t.time     "hora"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "views", ["directory_id"], name: "index_views_on_directory_id", using: :btree

  add_foreign_key "directories", "categories"
  add_foreign_key "directories", "users"
  add_foreign_key "likes", "directories"
  add_foreign_key "likes", "users"
  add_foreign_key "links", "directories"
  add_foreign_key "subcategories", "categories"
  add_foreign_key "views", "directories"
end
