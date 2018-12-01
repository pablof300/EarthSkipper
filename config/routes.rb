Rails.application.routes.draw do
  root 'users#index'
  
  resources :trips
  resources :users
end
