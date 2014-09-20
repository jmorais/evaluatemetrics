class PesquisaController < ApplicationController
  def index
    @questionario = Questionario.new
    @metricas = Metrica.all
    @categorias = Categoria.all
  end

  def salvar
    
    @entrevistado = Entrevistado.new

    @entrevistado.nome = params[:nome]
    @entrevistado.email = params[:email]

    @entrevistado.papeis = params[:papeis]
    @entrevistado.papeis += ", #{params[:outros_papeis]}" if !params[:outros_papeis].blank?

    @entrevistado.formacao = params[:formacao]
    @entrevistado.qtd_projetos_testes = params[:qtd_projetos]
    @entrevistado.av_conhecimento_testes = params[:avaliacao_conhecimento]
    
    @entrevistado.certificacoes = params[:certificacoes]
    @entrevistado.certificacoes += ", #{params[:outras_certificacoes]}" if !params[:outras_certificacoes].blank?

    @entrevistado.modelos_maturidade = params[:modelos_maturidade]
    @entrevistado.modelos_maturidade += ", #{params[:outros_modelos_maturidade]}" if !params[:outros_modelos_maturidade].blank?

    @entrevistado.nivel_conhecimento_metodos_ageis = params[:conhecimento_ageis]
    @entrevistado.experiencia_metodos_ageis = params[:experiencia_ageis]
    @entrevistado.exposicao_desenvolvimento_agil = params[:exposicao_ageis]
    
    @entrevistado.metodos_ageis = params[:metodos_ageis]
    @entrevistado.metodos_ageis += ", #{params[:outros_metodos_ageis]}" if !params[:outros_metodos_ageis].blank?

    @entrevistado.usou_metricas = params[:usou_metricas]
    @entrevistado.quais_metricas = params[:quais_metricas]
    @entrevistado.conhece_norma_metrica = params[:conhecimento_norma]
    @entrevistado.quais_normas_metricas = params[:quais_normas]
    @entrevistado.comentario_metodos_ageis = params[:comentario_ageis]
    @entrevistado.comentario_teste = params[:comentario_teste]
    @entrevistado.comentario_adicional = params[:comentario_adicional]

    params[:metrica].each do |key, metrica|

      resposta = @entrevistado.respostas.new

      avaliacao = metrica[:avaliacao].to_i
      avaliacao = 0 if avaliacao < 1 || avaliacao > 10

      resposta.avaliacao = avaliacao
      resposta.observacao = metrica[:observacao]
      resposta.metrica = Metrica.find(metrica[:id])

    end

    @entrevistado.save

    redirect_to :enviado

  end

  def enviado
    
  end

end
