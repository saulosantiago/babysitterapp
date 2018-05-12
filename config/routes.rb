Rails.application.routes.draw do

  root "dashboard#index"
  
  resources :users
  # Rotas relacionadas ao login e logout
  get "/login",  to: "logins#login"
  post "/register", to: "logins#create"
  delete "/signout", to: "logins#destroy"
  # Rotas para os menus
  get "dashboard" => "dashboard#index"
  get "chamados" => "chamados#index"
  get "clientes" => "clientes#index"
end
