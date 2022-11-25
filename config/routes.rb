Rails.application.routes.draw do
  # devise_for :users
  root 'home#index'
  resources :tests

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users
      resources :sessions, only: %i[create destroy]
    end
  end
end
