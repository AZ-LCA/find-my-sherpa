Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'pages/home'
  get 'pages/main'
  get 'pages/edit_user'
  root 'pages#home'
  get 'pages/profile'
  resources :posts
  # Defines the root path route ("/")
  # root "articles#index"
end
