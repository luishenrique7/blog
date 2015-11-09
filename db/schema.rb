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

ActiveRecord::Schema.define(version: 20151105170017) do

  create_table "calendarios", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.string   "string",     limit: 255
    t.text     "texto",      limit: 65535
    t.date     "date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.integer  "usuario_id", limit: 4
    t.integer  "post_id",    limit: 4
    t.text     "descricao",  limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comentarios", ["post_id"], name: "index_comentarios_on_post_id", using: :btree
  add_index "comentarios", ["usuario_id"], name: "index_comentarios_on_usuario_id", using: :btree

  create_table "compromissos", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.text     "texto",      limit: 65535
    t.date     "date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "email",      limit: 255
    t.string   "telefone",   limit: 255
    t.string   "assunto",    limit: 255
    t.text     "mensagem",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "contatos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "telefone",   limit: 255
    t.text     "descricao",  limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "inicios", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "news", force: :cascade do |t|
    t.datetime "data"
    t.string   "autor",      limit: 255
    t.string   "titulo",     limit: 255
    t.text     "descricao",  limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "newsletters", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "usuario_id", limit: 4
    t.string   "titulo",     limit: 255
    t.text     "conteudo",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "posts", ["usuario_id"], name: "index_posts_on_usuario_id", using: :btree

  create_table "testes", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.string   "nome",            limit: 255
    t.string   "descricao",       limit: 255
    t.string   "image_file_name", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome",                   limit: 45
    t.string   "cpf",                    limit: 11
    t.string   "cep",                    limit: 9
    t.string   "endereco",               limit: 60
    t.integer  "numero",                 limit: 4
    t.string   "bairro",                 limit: 60
    t.string   "cidade",                 limit: 60
    t.string   "uf",                     limit: 2
    t.string   "email",                  limit: 120
    t.string   "senha",                  limit: 64
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,  null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
  end

  add_index "usuarios", ["confirmation_token"], name: "index_usuarios_on_confirmation_token", unique: true, using: :btree
  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  add_index "usuarios", ["unlock_token"], name: "index_usuarios_on_unlock_token", unique: true, using: :btree

  add_foreign_key "comentarios", "posts"
  add_foreign_key "comentarios", "usuarios"
  add_foreign_key "posts", "usuarios"
end
