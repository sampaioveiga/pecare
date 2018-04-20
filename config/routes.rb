Rails.application.routes.draw do
  root 'static_pages#index'

  get 'static_pages/index'
  get 'static_pages/help'

  get 'patients/npsonho', to: 'patients#npsonho', as: 'npsonho_patient'
  resources :patients, except: [ :destroy ] do
    resources :pulmonary_appointments, only: [ :new, :create, :destroy ]
  end
end
