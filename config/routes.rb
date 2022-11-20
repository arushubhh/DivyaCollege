Rails.application.routes.draw do
  resources :user_profiles
  get 'comparison/index'
  get 'comparison/new'
  get 'comparison/show'
  resources :colleges do 
    resources :reviews
  end
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
