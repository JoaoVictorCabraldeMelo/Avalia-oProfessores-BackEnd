Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Rotas para o usuario
  get "/usuarios" => "users#index"
  get "/usuario/:id" => "users#show"
  post "/cadastrar" => "users#create"
  put "/usuario/atualizar/:id" => "users#update"
  delete "/usuario/deletar/:id" => "users#delete"

end
