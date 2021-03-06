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

ActiveRecord::Schema.define(version: 20140921193142) do

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "categorias", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entrevistados", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "papeis"
    t.string   "formacao"
    t.string   "qtd_projetos_testes"
    t.string   "av_conhecimento_testes"
    t.string   "certificacoes"
    t.string   "modelos_maturidade"
    t.string   "nivel_conhecimento_metodos_ageis"
    t.string   "experiencia_metodos_ageis"
    t.string   "exposicao_desenvolvimento_agil"
    t.string   "metodos_ageis"
    t.string   "usou_metricas"
    t.string   "quais_metricas"
    t.string   "conhece_norma_metrica"
    t.string   "quais_normas_metricas"
    t.string   "comentario_metodos_ageis"
    t.string   "comentario_teste"
    t.string   "comentario_adicional"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metricas", force: true do |t|
    t.string   "objetivo"
    t.string   "pergunta"
    t.string   "base_medicao"
    t.string   "suposicoes"
    t.string   "tendencia_experada"
    t.string   "quando_utilizar"
    t.string   "quando_parar"
    t.string   "manipulacao"
    t.string   "cuidados"
    t.string   "coleta"
    t.string   "classificacao_1"
    t.string   "classificacao_2"
    t.string   "classificacao_3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "categoria_id"
    t.string   "fonte"
    t.string   "importancia_metodos_ageis"
    t.string   "nome"
  end

  add_index "metricas", ["categoria_id"], name: "index_metricas_on_categoria_id"

  create_table "respostas", force: true do |t|
    t.string   "observacao"
    t.integer  "avaliacao",       limit: 1, default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "entrevistado_id"
    t.integer  "metrica_id"
  end

  add_index "respostas", ["entrevistado_id"], name: "index_respostas_on_entrevistado_id"
  add_index "respostas", ["metrica_id"], name: "index_respostas_on_metrica_id"

end
