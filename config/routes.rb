Rails.application.routes.draw do

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  get 'dashboard', to: 'users#dashboard'

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root 'pages#index'
  resources :users
  resources :trips
end
