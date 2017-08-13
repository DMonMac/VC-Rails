Rails.application.routes.draw do
  resources :users, only: [:index, :show]

  resources :homes
  root 'static_pages#home'

  devise_for :users, controllers: { registrations: 'users/registrations' },
                     path: 'auth',
                     path_names: { sign_in: 'login', sign_out: 'logout' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
