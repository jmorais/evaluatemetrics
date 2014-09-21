class AddCategoriaToMetricas < ActiveRecord::Migration
  def change
    add_reference :metricas, :categoria, index: true
  end
end
