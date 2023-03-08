Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' } do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'pages/home'
  get 'pages/main'
  get 'pages/edit_user'
  root 'pages#home'
  get 'pages/profile'
  resources :posts do
    resources :comments
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
