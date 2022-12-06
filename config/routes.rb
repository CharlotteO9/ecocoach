Rails.application.routes.draw do
  get 'events/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :challenges, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :edit, :update, :destroy]

  resources :usertips, only: [:new, :create, :edit, :update, :destroy] do
    resources :saved_user_tips, only: [:create]
  end

  resources :tips, only: [] do
    resources :saved_tips, only: [:create]
  end
  resources :saved_tips, only: [:destroy]
  resources :saved_user_tips, only: [:destroy]

  get 'profile', to: 'pages#profile'
  get 'profile_tips', to: 'pages#profile_tips'
  get 'profile_challenge', to: 'pages#profile_challenge'
  get 'tipsindex', to: 'pages#tipsindex'
  get 'seniorities', to: 'seniorities#index'
  get 'events', to: 'events#index'
end
