Rails.application.routes.draw do
  mount Notifications::Engine => "/notifications"
  devise_for :users

  root to: 'home#index'
  resources :home, only: [:index]
  resources :about, only: [:index]

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
