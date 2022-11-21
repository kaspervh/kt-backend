Rails.application.routes.draw do
  resources :rosters
  post '/login', to: 'session#login'
  post '/signup', to: 'users#create'

  resources :users
  resources :units
  resources :factions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
