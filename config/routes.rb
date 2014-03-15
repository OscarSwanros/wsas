Wsas::Application.routes.draw do
  devise_for :users
  resources :clients
  resources :cars
  resources :workers

  namespace :api do
    namespace :v1 do
      resources :clients
    end
  end

  root to: "clients#index"
end
