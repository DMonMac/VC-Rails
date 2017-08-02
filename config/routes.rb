Rails.application.routes.draw do

  post '/signup', to: 'users#create'
  resources :users
  get '/signup', to: 'users#new'
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
