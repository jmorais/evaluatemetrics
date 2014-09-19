class Metrica < ActiveRecord::Base

  self.table_name = 'metricas'

  belongs_to :categoria
  has_many :respostas

end
