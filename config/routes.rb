Wsas::Application.routes.draw do
  devise_for :users
  resources :clients
  resources :cars
  resources :workers

  root to: "clients#index"
end
