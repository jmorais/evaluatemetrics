class MetricasController < ApplicationController

  def show
    @metricas = Metrica.all
  end

  def edit
    @metrica = Metrica.find(params[:id])
  end

  def update
    @metrica = Metrica.find(params[:id])

    @metrica.update_attributes(metrica_params)

    redirect_to "/metricas"
  end

  private

    def metrica_params
      params.require(:metrica).permit(:nome, :objetivo, :pergunta, :base_medicao, :suposicoes, :tendencia_experada, :quando_utilizar, :quando_parar, :manipulacao, :cuidados, :coleta, :fonte, :importancia_metodos_ageis, :classificacao_1, :classificacao_2, :classificacao_3)
    end

end