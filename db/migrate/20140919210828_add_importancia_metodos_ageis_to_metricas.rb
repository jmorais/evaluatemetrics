class AddImportanciaMetodosAgeisToMetricas < ActiveRecord::Migration
  def change
    add_column :metricas, :importancia_metodos_ageis, :string
  end
end
