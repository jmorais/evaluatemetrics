class AddMetricaToRespostas < ActiveRecord::Migration
  def change
    add_reference :respostas, :metrica, index: true
  end
end
