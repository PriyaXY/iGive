Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/dashboard", to: "pages#dashboard", as: 'dashboard'
  get "accept_booking/:booking", to: "bookings#accept_booking", as: 'accept_booking'
  post "/update_avatar", to: "pages#update_avatar"
  get "/chats", to: "pages#chats", as: 'chats'

  resources :charities, only: [:new, :create, :show, :edit, :update]
  resources :missions do
  resources :bookings, only: [:create]
  resources :chatrooms, only: :show
  end

  resources :chatrooms, only: :show do
  resources :messages, only: :create
  end

end

