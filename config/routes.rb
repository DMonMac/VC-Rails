Rails.application.routes.draw do

  # Sessions use cookies to remember user data while logged in and forgets it when logged out.
  delete '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'
  get '/login', to: 'sessions#new'

  post '/signup', to: 'users#create'
  resources :users # This adds the complete CRUD URI Pattern and Controller#Action to the users controller.
  get '/signup', to: 'users#new'
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
