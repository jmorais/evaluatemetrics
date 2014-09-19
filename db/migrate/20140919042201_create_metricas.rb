class CreateMetricas < ActiveRecord::Migration
  def change
    create_table :metricas do |t|
      t.string :objetivo
      t.string :pergunta
      t.string :base_medicao
      t.string :suposicoes
      t.string :tendencia_experada
      t.string :quando_utilizar
      t.string :quando_parar
      t.string :manipulacao
      t.string :cuidados
      t.string :coleta
      t.string :classificacao_1
      t.string :classificacao_2
      t.string :classificacao_3
      t.timestamps
    end
  end
end