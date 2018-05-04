Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'

  get 'static_pages/index'
  get 'static_pages/help'

  get 'patients/npsonho', to: 'patients#npsonho', as: 'npsonho_patient'
  resources :patients, except: [ :destroy ] do
    resources :pulmonary_appointments, only: [ :new, :create ]
  end
  resources :pulmonary_appointments, only: [ :edit, :update, :destroy ]

  namespace :pulmonary do
    resources :inhaler_device_types, except: [ :show, :new, :create, :edit, :update, :destroy ]
    resources :inhaler_devices, except: [ :show, :new, :create, :edit, :update, :destroy ]
  end
end
