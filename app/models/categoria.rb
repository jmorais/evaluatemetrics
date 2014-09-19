class Categoria < ActiveRecord::Base

  self.table_name = 'categorias'

  has_many :metricas

  validates :nome, presence: true

end
