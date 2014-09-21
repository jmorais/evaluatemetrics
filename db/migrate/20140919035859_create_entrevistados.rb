class CreateEntrevistados < ActiveRecord::Migration
  def change
    create_table :entrevistados do |t|
      t.string :nome
      t.string :email
      t.string :papeis
      t.string :formacao
      t.string :qtd_projetos_testes
      t.string :av_conhecimento_testes
      t.string :certificacoes
      t.string :modelos_maturidade
      t.string :nivel_conhecimento_metodos_ageis
      t.string :experiencia_metodos_ageis
      t.string :exposicao_desenvolvimento_agil
      t.string :metodos_ageis
      t.string :usou_metricas
      t.string :quais_metricas
      t.string :conhece_norma_metrica
      t.string :quais_normas_metricas
      t.string :comentario_metodos_ageis
      t.string :comentario_teste
      t.string :comentario_adicional

      t.timestamps
    end
  end
end
