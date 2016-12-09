Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create"

  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  get 'users/:id', to: "users#show", as: "profile"

  get '/memory' => 'memory#index'

  resources :topics

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
