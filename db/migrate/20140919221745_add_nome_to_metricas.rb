class AddNomeToMetricas < ActiveRecord::Migration
  def change
    add_column :metricas, :nome, :string
  end
end
