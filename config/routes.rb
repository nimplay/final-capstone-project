Rails.application.routes.draw do
  root 'home#index'
  devise_for :users,
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users
      resources :cars
      resources :reservations
    end
  end
end
