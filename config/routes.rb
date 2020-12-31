Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  resources :events
  resources :get_events
  end
end
