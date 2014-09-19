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

ActiveRecord::Schema.define(version: 20140919042201) do

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
  end

end
