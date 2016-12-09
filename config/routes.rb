Rails.application.routes.draw do
<<<<<<< HEAD
=======
  devise_for :users
>>>>>>> 3e25ab8ed4c82dfe80ddd827bd7925e0fce9a5ce
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
  resources :topics

>>>>>>> 3e25ab8ed4c82dfe80ddd827bd7925e0fce9a5ce
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
