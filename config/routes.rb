Rails.application.routes.draw do
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

  get 'profile', to: 'pages#profile'
end
