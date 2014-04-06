Wsas::Application.routes.draw do
  devise_for :users

  resources :clients
  resources :cars
  resources :workers
  resources :jobs

  namespace :api do
    namespace :v1 do
      resources :clients
    end
  end

  root to: "welcome#index"
end
