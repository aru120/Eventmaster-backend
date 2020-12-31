Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
  resources :users
  resources :events
  resources :get_events
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  end
end
