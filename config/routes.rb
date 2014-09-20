Evaluatemetrics::Application.routes.draw do
  root 'pesquisa#index'

  post "salvar" => "pesquisa#salvar", as: :salvar
  get "enviado" => "pesquisa#enviado", as: :enviado
end
