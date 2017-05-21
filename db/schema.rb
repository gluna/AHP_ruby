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

ActiveRecord::Schema.define(version: 20170521184238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternativas", force: :cascade do |t|
    t.string   "nome"
    t.string   "codigo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "projeto_id"
    t.float    "prioridade_global"
    t.index ["projeto_id"], name: "index_alternativas_on_projeto_id", using: :btree
  end

  create_table "criterios", force: :cascade do |t|
    t.string   "nome"
    t.string   "codigo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "projeto_id"
    t.integer  "criterio_id"
    t.float    "prioridade"
    t.index ["criterio_id"], name: "index_criterios_on_criterio_id", using: :btree
    t.index ["projeto_id"], name: "index_criterios_on_projeto_id", using: :btree
  end

  create_table "grupo_avaliacaos", force: :cascade do |t|
    t.string   "nome"
    t.float    "peso"
    t.integer  "projeto_id"
    t.boolean  "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projeto_id"], name: "index_grupo_avaliacaos_on_projeto_id", using: :btree
  end

  create_table "julgamento_criterios", force: :cascade do |t|
    t.integer  "projeto_id"
    t.integer  "criterio_1_id"
    t.integer  "criterio_2_id"
    t.float    "valor"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["criterio_1_id"], name: "index_julgamento_criterios_on_criterio_1_id", using: :btree
    t.index ["criterio_2_id"], name: "index_julgamento_criterios_on_criterio_2_id", using: :btree
    t.index ["projeto_id"], name: "index_julgamento_criterios_on_projeto_id", using: :btree
  end

  create_table "julgamentos", force: :cascade do |t|
    t.integer  "projeto_id"
    t.integer  "criterio_id"
    t.integer  "alternativa_1_id"
    t.integer  "alternativa_2_id"
    t.float    "valor"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["alternativa_1_id"], name: "index_julgamentos_on_alternativa_1_id", using: :btree
    t.index ["alternativa_2_id"], name: "index_julgamentos_on_alternativa_2_id", using: :btree
    t.index ["criterio_id"], name: "index_julgamentos_on_criterio_id", using: :btree
    t.index ["projeto_id"], name: "index_julgamentos_on_projeto_id", using: :btree
  end

  create_table "prioridade_relativas", force: :cascade do |t|
    t.integer  "projeto_id"
    t.integer  "alternativa_id"
    t.integer  "criterio_id"
    t.float    "valor"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["alternativa_id"], name: "index_prioridade_relativas_on_alternativa_id", using: :btree
    t.index ["criterio_id"], name: "index_prioridade_relativas_on_criterio_id", using: :btree
    t.index ["projeto_id"], name: "index_prioridade_relativas_on_projeto_id", using: :btree
  end

  create_table "projetos", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_projetos_on_user_id", using: :btree
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin_role"
    t.boolean  "user_role"
    t.string   "nome"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "alternativas", "projetos"
  add_foreign_key "criterios", "criterios"
  add_foreign_key "criterios", "projetos"
  add_foreign_key "grupo_avaliacaos", "projetos"
  add_foreign_key "julgamento_criterios", "projetos"
  add_foreign_key "julgamentos", "criterios"
  add_foreign_key "julgamentos", "projetos"
  add_foreign_key "prioridade_relativas", "alternativas"
  add_foreign_key "prioridade_relativas", "criterios"
  add_foreign_key "prioridade_relativas", "projetos"
  add_foreign_key "projetos", "users"
end
