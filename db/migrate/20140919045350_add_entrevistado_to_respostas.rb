class AddEntrevistadoToRespostas < ActiveRecord::Migration
  def change
    add_reference :respostas, :entrevistado, index: true
  end
end
