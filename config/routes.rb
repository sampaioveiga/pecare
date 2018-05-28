Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :roles, only: [ :index, :show ]
  resources :users do
    resources :roles, only: [ :create, :destroy ]
  end

  root 'static_pages#index'

  get 'static_pages/index'
  get 'static_pages/help'

  get 'patients/npsonho', to: 'patients#npsonho', as: 'npsonho_patient'
  resources :patients, except: [ :destroy ] do
    resources :pulmonary_appointments, only: [ :new, :create ]
  end
  resources :pulmonary_appointments, only: [ :show, :edit, :update, :destroy ]

  namespace :pulmonary do
    resources :inhaler_device_types, except: [ :destroy ]
    resources :inhaler_devices, except: [ :destroy ]
    resources :oxygen_therapy_suppliers, except: [ :destroy ]
  end
end
