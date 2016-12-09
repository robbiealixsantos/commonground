Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create"

  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  get 'users/:id', to: "users#show", as: "profile"

<<<<<<< HEAD
  resources :welcome, only: :index
=======
  get '/memory' => 'memory#index'

>>>>>>> 62edc22081166292f3097dfdb353f4817ffcc62c
  resources :topics

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'


  resources :chatrooms, param: :slug
  resources :messages
end
