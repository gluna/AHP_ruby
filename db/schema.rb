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

ActiveRecord::Schema.define(version: 20161121185340) do

  create_table "alternativas", force: :cascade do |t|
    t.string   "nome"
    t.string   "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "projeto_id"
    t.index ["projeto_id"], name: "index_alternativas_on_projeto_id"
  end

  create_table "criterios", force: :cascade do |t|
    t.string   "nome"
    t.string   "codigo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "projeto_id"
    t.integer  "criterio_id"
    t.index ["criterio_id"], name: "index_criterios_on_criterio_id"
    t.index ["projeto_id"], name: "index_criterios_on_projeto_id"
  end

  create_table "grupo_avaliacaos", force: :cascade do |t|
    t.string   "nome"
    t.float    "peso"
    t.integer  "projeto_id"
    t.boolean  "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projeto_id"], name: "index_grupo_avaliacaos_on_projeto_id"
  end

  create_table "grupo_criterios", force: :cascade do |t|
    t.string   "nome"
    t.float    "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupo_usuarios", force: :cascade do |t|
    t.integer  "grupo_avaliacao_id"
    t.integer  "usuario_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["grupo_avaliacao_id"], name: "index_grupo_usuarios_on_grupo_avaliacao_id"
    t.index ["usuario_id"], name: "index_grupo_usuarios_on_usuario_id"
  end

  create_table "julgamentos", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "projeto_id"
    t.integer  "criterio_id"
    t.integer  "alternativa_1_id"
    t.integer  "alternativa_2_id"
    t.float    "valor"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["alternativa_1_id"], name: "index_julgamentos_on_alternativa_1_id"
    t.index ["alternativa_2_id"], name: "index_julgamentos_on_alternativa_2_id"
    t.index ["criterio_id"], name: "index_julgamentos_on_criterio_id"
    t.index ["projeto_id"], name: "index_julgamentos_on_projeto_id"
    t.index ["usuario_id"], name: "index_julgamentos_on_usuario_id"
  end

  create_table "projetos", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
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
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
