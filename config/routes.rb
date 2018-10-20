Rails.application.routes.draw do
  root to: 'home#index'
  resources :home, only: [:index]
  resources :about, only: [:index]
end
