class Resposta < ActiveRecord::Base

  self.table_name = 'respostas'

  belongs_to :entrevistado
  belongs_to :metrica

end
