Rails.application.routes.draw do
  root 'static_pages#index'

  get 'static_pages/index'
  get 'static_pages/help'

  get 'patients/npsonho', to: 'patients#npsonho', as: 'npsonho_patient'
  resources :patients, except: [ :destroy ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
