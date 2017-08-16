Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: { registrations: 'users/registrations' }
  devise_for :tourguides, controllers: { registrations: 'tourguides/registrations' },
                          path_names: { sign_in: 'login_tg', sign_out: 'logout_tg' }

  resources :tourguides, only: [:index, :show]
  resources :destinations
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
