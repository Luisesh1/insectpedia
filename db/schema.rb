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

ActiveRecord::Schema.define(version: 20160728064726) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "biome_insects", force: :cascade do |t|
    t.integer  "insect_id"
    t.integer  "biome_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "biome_insects", ["biome_id"], name: "index_biome_insects_on_biome_id"
  add_index "biome_insects", ["insect_id"], name: "index_biome_insects_on_insect_id"

  create_table "biomes", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "families", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "order_id"
  end

  add_index "families", ["order_id"], name: "index_families_on_order_id"

  create_table "genders", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "family_id"
  end

  add_index "genders", ["family_id"], name: "index_genders_on_family_id"

  create_table "images", force: :cascade do |t|
    t.string   "nota"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.integer  "insect_id"
    t.integer  "part_id"
  end

  add_index "images", ["insect_id"], name: "index_images_on_insect_id"
  add_index "images", ["part_id"], name: "index_images_on_part_id"

  create_table "insects", force: :cascade do |t|
    t.string   "nombre"
    t.string   "genero"
    t.string   "especie"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "order_id"
    t.integer  "family_id"
    t.integer  "gender_id"
    t.text     "descripcion_biologica"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.string   "modelo"
  end

  add_index "insects", ["family_id"], name: "index_insects_on_family_id"
  add_index "insects", ["gender_id"], name: "index_insects_on_gender_id"
  add_index "insects", ["order_id"], name: "index_insects_on_order_id"

  create_table "municipalities", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "state_id"
  end

  add_index "municipalities", ["state_id"], name: "index_municipalities_on_state_id"

  create_table "orders", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "biome_id"
  end

  add_index "states", ["biome_id"], name: "index_states_on_biome_id"

  create_table "ubications", force: :cascade do |t|
    t.decimal  "latitud"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "insect_id"
    t.decimal  "longitud"
  end

  add_index "ubications", ["insect_id"], name: "index_ubications_on_insect_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
