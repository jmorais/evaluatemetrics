class Entrevistado < ActiveRecord::Base

  self.table_name = 'entrevistados'

  validates :nome, :email, presence: true

end
