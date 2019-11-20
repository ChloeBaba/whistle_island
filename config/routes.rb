Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'users/:id', to: 'users#show', as: 'profile'
  get 'users/:id/edit', to: 'users#edit'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  get 'dashboard', to: 'dashboards#show', as: 'dashboard'
  resources :islands do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]
end
