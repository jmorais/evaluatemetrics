class Entrevistado < ActiveRecord::Base

  validates :nome, :email, presence: true

end
