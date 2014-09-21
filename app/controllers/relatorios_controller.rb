class RelatoriosController < ApplicationController
  before_action :authenticate_admin_user!

  def index
    @entrevistados = Entrevistado.all
  end
end
