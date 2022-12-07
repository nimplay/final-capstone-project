Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'private/test'
  root to: redirect('/api-docs')
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
  get '/users-data', to: 'users#show'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users do
        resources :bookings
      end
      resources :cars
    end
  end
end
