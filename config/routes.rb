Rails.application.routes.draw do

  root "logins#new"
  
  resources :users
  # Rotas relacionadas ao login e logout
  get "/signin",  to: "logins#new"
  post "/signin", to: "logins#create"
  delete "/signout" to: "logins#destroy"
  # Rotas para os menus
  get "dashboard" => "dashboard#index"
  get "chamados" => "chamados#index"
  get "clientes" => "clientes#index"
end
