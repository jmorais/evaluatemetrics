class AddFonteToMetricas < ActiveRecord::Migration
  def change
    add_column :metricas, :fonte, :string
  end
end
