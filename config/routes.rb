Wsas::Application.routes.draw do
  resources :clients
  resources :cars

  root to: "clients#index"
end
