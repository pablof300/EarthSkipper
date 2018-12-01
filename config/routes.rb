Rails.application.routes.draw do
  root 'users#index'
  resources :trips
  root 'users#index'
end
