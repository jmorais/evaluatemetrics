Evaluatemetrics::Application.routes.draw do
  
  root 'pesquisa#index'
  get "/metricas" => "metricas#show"

  get "/metricas/editar/:id" => "metricas#edit", as: :edit_metrica
  patch "/metricas/editar/:id" => "metricas#update", as: :metrica

  get "/metricas/criar" => "metricas#new"
  put "/metricas/criar" => "metricas#create"

  post "salvar" => "pesquisa#salvar", as: :salvar
  get "enviado" => "pesquisa#enviado", as: :enviado
end
