class Entrevistado < ActiveRecord::Base

  self.table_name = 'entrevistados'

  has_many :respostas

  validates :nome, :email, presence: true

end
