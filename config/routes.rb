Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Rotas para o usuario
  get "/usuarios" => "users#index"
  get "/usuario/:id" => "users#show"
  post "/cadastrar" => "users#create"
  put "/usuario/atualizar/:id" => "users#update"
  delete "/usuario/deletar/:id" => "users#delete"

  # Rotas para professor
  get "/professores" => "professores#index"
  get "/professor/:id" => "professores#show"
  post "/adicionar" => "professores#create"
  put "/professor/atualizar/:id" => "professores#update"
  delete "/professor/deletar/:id" => "professores#delete"

   # Rotas para avaliacao
   get "/avaliacoes" => "avaliacoes#index"
   get "/avaliacao/:id" => "avaliacoes#show"
   post "/adicionar/avaliacao" => "avaliacoes#create"
   put "/avaliacao/atualizar/:id" => "avaliacoes#update"
   delete "/avaliacao/deletar/:id" => "avaliacoes#delete"

end
