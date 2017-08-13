Rails.application.routes.draw do
  resources :tourguides, only: [:index, :show]

  devise_for :tourguides, controllers: {
        registrations: 'tourguides/registrations'
      },
                         path: 'auth_tg',
                         path_names: { sign_in: 'login_tg', sign_out: 'logout_tg' }

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
