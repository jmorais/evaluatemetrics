class CreateResposta < ActiveRecord::Migration
  def change
    create_table :resposta do |t|
      t.string :observacao
      t.integer :avaliacao, default: 0, limit: 1
      
      t.timestamps
    end
  end
end
