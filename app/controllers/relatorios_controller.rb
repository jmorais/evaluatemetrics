class RelatoriosController < ApplicationController
  def index
    @entrevistados = Entrevistado.all
  end
end
