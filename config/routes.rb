Wsas::Application.routes.draw do
  devise_for :users
  resources :clients
  resources :cars

  root to: "clients#index"
end
