Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :challenges, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :edit, :update, :destroy] do
    resources :usertips, only: [:new, :create, :edit, :update]
  end

  get 'usertips', to: 'usertips#destroy'
  get 'profile', to: 'pages#profile'
end
